const express = require("express");
const colors = require("colors");
const dotenv = require("dotenv");
const cors = require("cors");
const path = require("path");
const { join, dirname } = require("path");
const { authRoutes } = require("./router/authRouter");
const { receptionist_Routes } = require("./router/receptionist_Routes");
const {superRoute} = require('./router/superAdminRoutes')

// require("./backup");
const {sendEmails, sendSMS, sendWhatsappTextOnly} = require("./cron/sendAppointmentEmails");
const cron = require('node-cron');
const { zipLogs } = require("./scheduler");
const { getPatientReminder } = require("./sheduler/reminder");

dotenv.config();
// Create Express app
const app = express();
const BACKUP_DIR = path.join(__dirname, "backups");

// Middlewares
app.use(cors());
app.use(express.json());
app.use(express.static(join(__dirname, "build")));
app.get("*", (req, res, next) => {
  if (req.url.startsWith("/api")) {
    return next();
  }
   res.sendFile(join(__dirname, "build", "index.html"));
});

app.get("/backup/download/:filename", (req, res) => {
  const filename = req.params.filename;
  const filePath = path.join(BACKUP_DIR, filename);

  if (fs.existsSync(filePath)) {
    res.download(filePath);
  } else {
    res.status(404).send("File not found");
  }
});

// Serve uploaded images statically
app.use("/uploads", express.static(path.join(__dirname, "uploads")));
app.use("/prescription", express.static(path.join(__dirname, "prescription")));

// REST API Routes
app.use("/api/doctor", authRoutes);
app.use('/api/v1/receptionist',receptionist_Routes);
app.use('/api/v1/super-admin',superRoute);

// PORT
const PORT = process.env.PORT || 8888;

// Schedule the cron job to send appointment emails
cron.schedule('0 8 * * *', () => {
  console.log('Sending emails for appointments scheduled for today...');
  sendEmails();
  sendSMS()
  sendWhatsappTextOnly()
},{
  scheduled: true,
  timezone: "Asia/Kolkata"
});

cron.schedule("0 0 * * *", () => {
  zipLogs();
});

cron.schedule('0 10 * * *', () => {
  console.log('Running getPatientReminder at 10 AM IST');
  getPatientReminder();
}, {
  timezone: "Asia/Kolkata" // Set the timezone to IST
});

// Run server
app.listen(PORT, () => {
  console.log(`Server running on port ${PORT}`);
});
