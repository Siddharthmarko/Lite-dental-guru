const express = require("express");
const multer = require("multer");
const fs = require("fs");
const path = require("path");

const {
  getBranchDetailsByBranch,
  updateBranchCalenderSetting,
  addBlockDays,
  getHolidays,
  updateHolidays,
  deleteHolidays,
  deleteTreatment,
  addSuperAdminNotify,
  updateDoctorPaymentAllowSetting,
  addInsuranceCompany,
  getInsuranceList,
  updateInsuranceDetails,
  deleteInsurance,
  getTreatmentList,
  updateTreatmentDetails,
  addTreatment,
  getProcedureList,
  getBranch,
  getEmployeeDataByBranch,
  editEmployeeDetails,
  getTreatmentViaId,
  EnrollEmployee,
  getEmployeeDataByBranchAndId,
  updateBranchDetails,
} = require("../controller/superAdminController");

const authenticate = require("../middleware/authMiddleware.js");

const router = express.Router();

const profilePicturestorage = multer.diskStorage({
  destination: function (req, file, cb) {
    cb(null, "empProfilePicture/");
  },
  filename: function (req, file, cb) {
    const uniqueSuffix = Date.now();
    cb(null, uniqueSuffix + file.originalname);
  },
});

const profilePictureupload = multer({ storage: profilePicturestorage });

router.get(
  "/getBranchDetailsByBranch/:branch",
  authenticate,
  getBranchDetailsByBranch
);

router.put(
  "/updateBranchCalenderSetting/:branch",
  authenticate,
  updateBranchCalenderSetting
);

router.get("/getHolidays/:branch", authenticate, getHolidays);

router.put("/updateHolidays/:hid", authenticate, updateHolidays);

router.delete("/deleteHolidays/:hid", authenticate, deleteHolidays);

router.delete("/deleteTreatment/:tid", authenticate, deleteTreatment);

router.post("/addSuperAdminNotify", authenticate, addSuperAdminNotify);

router.put(
  "/updateDoctorPaymentAllowSetting/:branch",
  authenticate,
  updateDoctorPaymentAllowSetting
);

router.post("/addInsuranceCompany/:branch", authenticate, addInsuranceCompany);

router.get("/getInsuranceList/:branch", authenticate, getInsuranceList);
router.put(
  "/updateInsuranceDetails/:ins/:branch",
  authenticate,
  updateInsuranceDetails
);
router.delete("/deleteInsurance/:ins/:branch", authenticate, deleteInsurance);

router.get("/getTreatmentList", authenticate, getTreatmentList);

router.put("/updateTreatmentDetails/:id", authenticate, updateTreatmentDetails);
router.post("/addTreatment", authenticate, addTreatment);

router.get("/getProcedureList", authenticate, getProcedureList);

router.get("/getBranch", getBranch);
router.get(
  "/getEmployeeDataByBranch/:branch",
  authenticate,
  getEmployeeDataByBranch
);
router.put(
  "/editEmployeeDetails/:branch/:empID",
  profilePictureupload.single("empProfilePicture"),
  authenticate,
  editEmployeeDetails
);
router.get("/getTreatmentViaId/:tid", authenticate, getTreatmentViaId);

router.post(
  "/enroll-employee",
  profilePictureupload.single("empProfilePicture"),
  authenticate,
  EnrollEmployee
);

router.post("/addBlockDays", authenticate, addBlockDays);
router.get("/getEmployeeDetails/:branch/:empId", getEmployeeDataByBranchAndId);

const uploadDir = path.join(__dirname, "branchHeadFootImg");

if (!fs.existsSync(uploadDir)) {
  fs.mkdirSync(uploadDir, { recursive: true });
}

const storagebranchHeadFootImg = multer.diskStorage({
  destination: function (req, file, cb) {
    cb(null, "branchHeadFootImg/");
  },
  filename: function (req, file, cb) {
    const uniqueSuffix = Date.now();
    cb(null, uniqueSuffix + file.originalname);
  },
});


const uploadbranchImg = multer({ storage: storagebranchHeadFootImg });
router.put(
  "/updateBranchDetails/:bid",
  uploadbranchImg.fields([
    { name: "head_img", maxCount: 1 },
    { name: "foot_img", maxCount: 1 },
  ]),
  authenticate,
  updateBranchDetails
);

const superRoute = router;

module.exports = { superRoute };
