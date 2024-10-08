// const cron = require('node-cron');
// const nodemailer = require('nodemailer');
// const { db } = require("../db");
// const dotenv = require("dotenv");
// dotenv.config();
// const moment = require('moment-timezone');

// const transporter = nodemailer.createTransport({
//     service: "Gmail",
//     auth: {
//       user: process.env.EMAILSENDER,
//       pass: process.env.EMAILPASSWORD,
//     },
//   });

// //  const transporter = nodemailer.createTransport({
// //     host: "doaguru.com", 
// //     port: 465,  
// //     secure: true, 
// //     auth: {
// //       user: "info@doaguru.com",
// //       pass: "dgwebmail@132",
// //     },
// //   });


//  // Function to query appointments scheduled for today
// const getAppointmentsForToday = () => {
//     const today = moment().tz("Asia/Kolkata").format("YYYY-MM-DD"); // Get today's date in YYYY-MM-DD format
//     const sql = `
//       SELECT 
//           a.appoint_id,
//           a.assigned_doctor_name,
//           a.assigned_doctor_id,
//           a.appointment_dateTime,
//           p.uhid,
//           p.patient_name,
//           p.emailid
//       FROM 
//           appointments AS a
//       JOIN 
//           patient_details AS p ON a.patient_uhid = p.uhid
//       WHERE
//       a.appointment_status = "Appoint" AND  DATE(a.appointment_dateTime) = ?`;
  
//     return new Promise((resolve, reject) => {
//       db.query(sql, [today], (err, results) => {
//         if (err) {
//           reject(err);
//         } else {
//           resolve(results);
//         }
//       });
//     });
//   };
  
//   // Function to send emails to patients
// //   const sendEmails = async () => {
// //     try {
// //       const appointments = await getAppointmentsForToday();
// //       appointments.forEach(async appointment => {
// //         const mailOptions = {
// //           from: process.env.EMAILSENDER,
// //           to: appointment.emailid,
// //         // to : "mohitsahu1993@gmail.com",
// //           subject: 'Your Appointment Today',
// //           text: `Hello ${appointment.patient_name}, 
// //             You have an appointment today with ${appointment.assigned_doctor_name}.
// //             Appointment Time: ${appointment.appointment_dateTime}`
// //         };
  
// //         // Send email
// //         await transporter.sendMail(mailOptions);
// //       });
// //     } catch (error) {
// //       console.error('Error sending emails:', error);
// //     }
// //   };



// // Function to send emails to patients
// const sendEmails = async () => {
//     try {
//       const appointments = await getAppointmentsForToday();
//       appointments.forEach(async appointment => {
//         // Check if email exists
//         const appointmentDateTime = new Date(appointment.appointment_dateTime);
// const appointmentTime = appointmentDateTime.toLocaleTimeString('en-US', { hour: 'numeric', minute: '2-digit', hour12: true });
//         if (appointment.emailid) {
//           const mailOptions = {
//             from: process.env.EMAILSENDER,
//             to: appointment.emailid,
//             subject: 'Appointment Reminder',
//             text: `Hello ${appointment.patient_name}, 
//               You have an appointment today with Dr.${appointment.assigned_doctor_name}.
//               Appointment Date & Time: ${appointmentDateTime.toDateString()} ${appointmentTime} , 
//               Thank You`
//           };
    
//           // Send email
//           await transporter.sendMail(mailOptions);
//         } else {
//           console.log(`Skipping email sending for appointment ID ${appointment.appoint_id} because email address is missing.`);
//         }
//       });
//     } catch (error) {
//       console.error('Error sending emails:', error);
//     }
//   };

  
//   // Schedule cron job to run every day at 9 am
// //   cron.schedule('0 9 * * *', () => {
// //     console.log('Sending emails for appointments scheduled for today...');
// //     sendEmails();
// //   });

//   module.exports = {
//     sendEmails
//   }




const cron = require('node-cron');
const nodemailer = require('nodemailer');
const { db } = require("../connect.js");
const dotenv = require("dotenv");
dotenv.config();
const moment = require('moment-timezone');
const twilio = require("twilio");
const ACCOUNT_SID = process.env.ACCOUNT_SID;
const AUTH_TOKEN = process.env.AUTH_TOKEN;
const client = twilio(ACCOUNT_SID, AUTH_TOKEN);

const transporter = nodemailer.createTransport({
    service: "Gmail",
    auth: {
      user: process.env.EMAILSENDER,
      pass: process.env.EMAILPASSWORD,
    },
  });

// const transporter = nodemailer.createTransport({
//   host: process.env.HOST, 
//   port: 465,  
//   secure: true, 
//   auth: {
//     user: process.env.EMAILSENDER,
//     pass: process.env.EMAILPASSWORD,
//   },
// });


 // Function to query appointments scheduled for today
const getAppointmentsForToday = () => {
    const today = moment().tz("Asia/Kolkata").format("YYYY-MM-DD"); // Get today's date in YYYY-MM-DD format
    const sql = `
      SELECT 
          a.appoint_id,
          a.assigned_doctor_name,
          a.assigned_doctor_id,
          a.appointment_dateTime,
          p.uhid,
          p.patient_name,
          p.emailid,
          p.mobileno
      FROM 
          appointments AS a
      JOIN 
          patient_details AS p ON a.patient_uhid = p.uhid
      WHERE
      a.appointment_status = "Appoint" AND  DATE(a.appointment_dateTime) = ?`;
  
    return new Promise((resolve, reject) => {
      db.query(sql, [today], (err, results) => {
        if (err) {
          reject(err);
        } else {
          resolve(results);
        }
      });
    });
  };
  
  // Function to send emails to patients
//   const sendEmails = async () => {
//     try {
//       const appointments = await getAppointmentsForToday();
//       appointments.forEach(async appointment => {
//         const mailOptions = {
//           from: process.env.EMAILSENDER,
//           to: appointment.emailid,
//         // to : "mohitsahu1993@gmail.com",
//           subject: 'Your Appointment Today',
//           text: `Hello ${appointment.patient_name}, 
//             You have an appointment today with ${appointment.assigned_doctor_name}.
//             Appointment Time: ${appointment.appointment_dateTime}`
//         };
  
//         // Send email
//         await transporter.sendMail(mailOptions);
//       });
//     } catch (error) {
//       console.error('Error sending emails:', error);
//     }
//   };

const sendWhatsappTextOnly = async (req, res) => {
 
  try {
       
    const appointments = await getAppointmentsForToday();
       appointments.forEach(async appointment => {
        // Check if email exists
        const appointmentDateTime = new Date(appointment.appointment_dateTime);
const appointmentTime = appointmentDateTime.toLocaleTimeString('en-US', { hour: 'numeric', minute: '2-digit', hour12: true });
        if (appointment.mobileno) {
          const message =  `Appointment Reminder\n\n` +
          `Hello ${appointment.patient_name},\n` +
          `You have an appointment today with Dr.${appointment.assigned_doctor_name}\n` +
          `Appointment Date & Time: ${appointmentDateTime.toDateString()} ${appointmentTime}\n`  + 
          `Thank You`
         
    
          // Send email
          const response = await client.messages.create({
            body: message,
            from: process.env.TWILIONUMBERWHATSAPP,
            to: `whatsapp:+91${phoneNumber}`,
          });
          
        } else {
          console.log(`Skipping email sending for appointment ID ${appointment.appoint_id} because email address is missing.`);
        }
      });


  
    console.log("WhatsApp message sent successfully:");
    // res.send("WhatsApp message sent successfully");
  } catch (error) {
    console.error("Error sending WhatsApp message:", error);
    res.status(500).send("Error sending WhatsApp message");
  }
};

const sendSMS = async (req, res) => {

  try {
      const appointments = await getAppointmentsForToday();
       appointments.forEach(async appointment => {
        // Check if email exists
        const appointmentDateTime = new Date(appointment.appointment_dateTime);
const appointmentTime = appointmentDateTime.toLocaleTimeString('en-US', { hour: 'numeric', minute: '2-digit', hour12: true });
        if (appointment.mobileno) {
            const message =  `Appointment Reminder\n\n` +
              `Hello ${appointment.patient_name},\n` +
              `You have an appointment today with Dr.${appointment.assigned_doctor_name}\n` +
              `Appointment Date & Time: ${appointmentDateTime.toDateString()} ${appointmentTime}\n`  + 
              `Thank You`
         
    
          // Send email
           await client.messages.create({
      from: process.env.TWILIONUMBER,
      to: `+91${appointment.mobileno}`,
      body: message,
    });
          
        } else {
          console.log(`Skipping email sending for appointment ID ${appointment.appoint_id} because email address is missing.`);
        }
      });
      
   
    // res.send("Message sent successfully!");
    console.log("Message has been sent");
  } catch (error) {
    console.error("Error sending SMS:", error);
    res.status(500).send("Error sending SMS");
  }
};



// Function to send emails to patients
const sendEmails = async () => {
    try {
      const appointments = await getAppointmentsForToday();
      appointments.forEach(async appointment => {
        // Check if email exists
        const appointmentDateTime = new Date(appointment.appointment_dateTime);
const appointmentTime = appointmentDateTime.toLocaleTimeString('en-US', { hour: 'numeric', minute: '2-digit', hour12: true });
        if (appointment.emailid) {
          const mailOptions = {
            from: process.env.EMAILSENDER,
            to: appointment.emailid,
            subject: 'Appointment Reminder',
            text: `Hello ${appointment.patient_name}, 
              You have an appointment today with Dr.${appointment.assigned_doctor_name}.
              Appointment Date & Time: ${appointmentDateTime.toDateString()} ${appointmentTime} , 
              Thank You`
          };
    
          // Send email
          await transporter.sendMail(mailOptions);
        } else {
          console.log(`Skipping email sending for appointment ID ${appointment.appoint_id} because email address is missing.`);
        }
      });
    } catch (error) {
      console.error('Error sending emails:', error);
    }
  };

  
  // Schedule cron job to run every day at 9 am
//   cron.schedule('0 9 * * *', () => {
//     console.log('Sending emails for appointments scheduled for today...');
//     sendEmails();
//   });

  module.exports = {
    sendEmails,sendSMS,sendWhatsappTextOnly
  }