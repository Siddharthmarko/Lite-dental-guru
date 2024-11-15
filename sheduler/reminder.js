const nodemailer = require('nodemailer');
const  db  = require('../connect.js');

// Configure nodemailer transporter
let transporter = nodemailer.createTransport({
  host: process.env.HOST, 
  port: 465,  
  secure: true, 
  auth: {
     user: process.env.EMAILSENDER,
    pass: process.env.EMAILPASSWORD,
  },
  tls: {
    rejectUnauthorized: false,
  },
});

// Function to send reminder email
const sendReminder = (userEmail, clientName, appointmentDetails) => {
  const { doctorName, date, treatment, clinicName, contact, address, email } = appointmentDetails;

  // Format the appointment date and time
  const meetDate = `${date.toLocaleString('en-US', { weekday: 'long' })}, ${date.toLocaleString('en-US', { month: 'short' })} ${date.getDate()}, ${date.getFullYear()}`;
  const meetTime = `${date.toLocaleString('en-US', { hour: 'numeric', minute: 'numeric', hour12: true })}`;

  // Prepare email options
  let mailOptions = {
    from: 'alternatedotme@gmail.com',
    to: userEmail,
    subject: `Reminder: Dental Appointment at ${clinicName}`,
    html: `
      <html>
        <head>
          <style>
            body {
              font-family: Arial, sans-serif;
              background-color: #f4f4f4;
              margin: 0;
              padding: 20px;
            }
            .container {
              max-width: 600px;
              background: white;
              padding: 20px;
              border-radius: 8px;
              box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            }
            h1 {
              color: #333;
            }
            h2 {
              color: #007BFF;
              margin-top: 20px;
            }
            p {
              color: #555;
              line-height: 1.5;
            }
            .highlight {
              font-weight: bold;
              color: #333;
            }
            .footer {
              margin-top: 20px;
              font-size: 12px;
              color: #888;
            }
            .footer a {
              color: #007BFF;
              text-decoration: none;
            }
          </style>
        </head>
        <body>
          <div class="container">
            <h1>Appointment Reminder</h1>
            <p>Hi <strong>${clientName}</strong>,</p>
            
            <p class="highlight">This is a reminder for your upcoming dental appointment.</p>
            
            <h2>Appointment Details:</h2>
            <p><strong>Doctor Name:</strong> ${doctorName}</p>
            <p><strong>Date & Time:</strong> ${meetDate} at ${meetTime}</p>
            <p><strong>Treatment:</strong> ${treatment}</p>
            
            <h2>Clinic Details:</h2>
            <p><strong>Clinic Name:</strong> ${clinicName}</p>
            <p><strong>Contact:</strong> ${contact}</p>
            <p><strong>Address:</strong> ${address}</p>
            <p><strong>Email:</strong> ${email}</p>
            
            <p>Please make sure to be on time.</p>
            
            <p>Thank you for choosing <strong>${clinicName}</strong>.</p>
            
            <div class="footer">
              <p>Best regards,<br>${clinicName}</p>
              <p><a href="mailto:${email}">${email}</a> | <a href="tel:${contact}">${contact}</a></p>
            </div>
          </div>
        </body>
      </html>
    `
  };
  
  

  transporter.sendMail(mailOptions, (error, info) => {
    if (error) {
      console.log('Email sending failed:', error);
    } else {
      console.log('Email sent:', info.response);
    }
  });
};


// Function to get users from the database
const getPatientReminder = () => {
  const getBranchQry = 'SELECT * FROM branches';
  const getPatientQry = 'SELECT * FROM appointments';
  const getPatientDetailsQry = 'SELECT * FROM patient_details WHERE uhid = ?'; // Query to get patient details

  db.query(getBranchQry, (err, branchResult) => {
    if (err) {
      return res.status(500).json({ message: "Internal Server Error" });
    }
    
    const branches = branchResult.reduce((acc, branch) => {
      acc[branch.branch_name] = branch; // Index branches by name
      return acc;
    }, {});

    db.query(getPatientQry, (err, patientResult) => {
      if (err) {
        return res.status(500).json({ message: "Internal Server Error" });
      }

      const currentDate = new Date();
      currentDate.setHours(0, 0, 0, 0);
      const tomorrow = new Date(currentDate);
      tomorrow.setDate(currentDate.getDate() + 1);

      for (let i = 0; i < patientResult.length; i++) {
        const appointmentDate = new Date(patientResult[i].appointment_dateTime);
        appointmentDate.setHours(0, 0, 0, 0);
        
        // Compare the appointment date with tomorrow's date
        if (appointmentDate.getTime() === tomorrow.getTime()) {
          const uhid = patientResult[i].patient_uhid;

          // Get patient details using uhid
          db.query(getPatientDetailsQry, [uhid], (err, patientDetailsResult) => {
            if (err) {
              console.log(`Error fetching patient details for uhid ${uhid}:`, err);
              return;
            }

            if (patientDetailsResult.length > 0) {
              const patientDetails = patientDetailsResult[0]; // Assuming uhid is unique

              // Check if email exists
              if (!patientDetails.emailid) {
                console.log(`No email found for patient ${patientDetails.patient_name}. Reminder not sent.`);
                return; // Skip sending if email is not present
              }

              // Retrieve branch details
              const branchDetails = branches[patientResult[i].branch_name];

              // Prepare appointment details
              const appointmentDetails = {
                doctorName: patientResult[i].assigned_doctor_name,
                date: appointmentDate,
                treatment: patientResult[i].treatment_provided,
                patientName: patientDetails.patient_name, // Get patient's name
                clinicName: branchDetails.branch_name,
                contact: branchDetails.branch_contact,
                address: branchDetails.branch_address,
                email: branchDetails.branch_email
              };

              // Send the reminder
              sendReminder(patientDetails.emailid, patientDetails.patient_name, appointmentDetails);
              console.log(`Reminder sent to ${patientDetails.patient_name} for appointment on ${appointmentDate}`);
            } else {
              console.log(`No patient found for uhid ${uhid}`);
            }
          });
        }
      }
    });
  });
};





module.exports = { getPatientReminder };
