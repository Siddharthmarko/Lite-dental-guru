const express = "express";
const dotenv = require("dotenv");
const bcrypt = require("bcrypt");
const nodemailer = require("nodemailer");
const JWT = require("jsonwebtoken");
const  db  = require("../connect.js");
const { registrationLogger } = require("./logger");
const fs = require("fs");
const path = require("path");
const { log } = require("console");
const moment = require("moment-timezone");

dotenv.config();


const getBranchDetailsByBranch = (req, res) => {
    try {
      const branch = req.params.branch;
      const selectQuery = "SELECT * FROM branches WHERE branch_name = ?";
      db.query(selectQuery, branch, (err, result) => {
        if (err) {
          res.status(400).json({ success: false, message: err.message });
        }
        res.status(200).send(result);
      });
    } catch (error) {
      console.log(error);
      res.status(500).json({ success: false, message: "Internal server error" });
    }
  };

  const updateBranchCalenderSetting = (req, res) => {
    try {
      const branch = req.params.branch;
      const { open_time, close_time, appoint_slot_duration, week_off } = req.body;
  
      // Step 1: Check if the branch exists
      const selectQuery = "SELECT * FROM branches WHERE branch_name = ?";
      db.query(selectQuery, branch, (err, result) => {
        if (err) {
          registrationLogger.log("error", "Invalid branch");
          return res.status(400).json({ success: false, message: err.message });
        }
  
        if (result && result.length > 0) {
          const updateFields = [];
          const updateValues = [];
  
          // Step 2: Prepare fields for updating
          if (open_time) {
            updateFields.push("open_time = ?");
            updateValues.push(open_time);
          }
  
          if (close_time) {
            updateFields.push("close_time = ?");
            updateValues.push(close_time);
          }
  
          if (appoint_slot_duration) {
            updateFields.push("appoint_slot_duration = ?");
            updateValues.push(appoint_slot_duration);
          }
  
          if (week_off) {
            updateFields.push("week_off = ?");
            updateValues.push(week_off);
          }
  
          // Check if there are fields to update
          if (updateFields.length === 0) {
            return res.status(400).json({
              success: false,
              message: "No fields provided for update",
            });
          }
  
          // Step 3: Construct and execute the update query
          const updateQuery = `UPDATE branches SET ${updateFields.join(", ")} WHERE branch_name = ?`;
          db.query(updateQuery, [...updateValues, branch], (err, result) => {
            if (err) {
              registrationLogger.log("error", "Failed to update details");
              return res.status(500).json({
                success: false,
                message: "Failed to update details",
                error: err,
              });
            } else {
              registrationLogger.log("info", "Branch details updated successfully");
              return res.status(200).json({
                success: true,
                message: "Branch details updated successfully",
              });
            }
          });
        } else {
          registrationLogger.log("error", "Branch not found");
          return res.status(404).json({
            success: false,
            message: "Branch not found",
          });
        }
      });
    } catch (error) {
      registrationLogger.log("error", "Internal server error");
      console.log(error);
      res.status(500).json({ success: false, message: "Internal server error" });
    }
  };
  

  const getHolidays = (req, res) => {
    try {
      const branch = req.params.branch;
      const selectQuery = "SELECT * FROM holidays WHERE branch_name = ?";
      db.query(selectQuery, branch, (err, result) => {
        if (err) {
          res.status(400).json({ success: false, message: err.message });
        }
        res.status(200).send(result);
      });
    } catch (error) {
      console.log(error);
      res.status(500).json({ success: false, message: error.message });
    }
  };
  const addBlockDays = (req, res) => {
    try {
      const {
        branch_name,
        holiday_name,
        holiday_date,
        holiday_start_time,
        holiday_end_time,
        notes,
      } = req.body;
      const selectQuery = "SELECT * FROM holidays WHERE holiday_date = ?";
      db.query(selectQuery, holiday_date, (err, result) => {
        if (err) {
          return res.status(400).json({ success: false, message: err.message });
        }
        if (result && result.length > 0) {
          return res.status(400).send("Holiday already exists");
        } else {
          const insertQuery =
            "INSERT INTO holidays (branch_name, holiday_name, holiday_date, holiday_start_time, holiday_end_time, notes) VALUES (?,?,?,?,?,?)";
          db.query(
            insertQuery,
            [
              branch_name,
              holiday_name,
              holiday_date,
              holiday_start_time,
              holiday_end_time,
              notes,
            ],
            (err, result) => {
              if (err) {
                return res
                  .status(400)
                  .json({ success: false, message: err.message });
              }
              return res.status(200).send(result);
            }
          );
        }
      });
    } catch (error) {
      console.log(error);
      res.status(500).json({ success: false, message: error.message });
    }
  };
  const updateHolidays = (req, res) => {
    try {
      const hid = req.params.hid;
      const {
        holiday_name,
        holiday_date,
        holiday_start_time,
        holiday_end_time,
        notes,
      } = req.body;
      const selectQuery = "SELECT * FROM holidays WHERE holiday_id = ?";
      db.query(selectQuery, hid, (err, result) => {
        if (err) {
          res.status(500).json({ success: false, message: err.message });
        }
        if (result && result.length > 0) {
          const updateFields = [];
          const updateValues = [];
  
          if (holiday_name) {
            updateFields.push("holiday_name = ?");
            updateValues.push(holiday_name);
          }
  
          if (holiday_date) {
            updateFields.push("holiday_date = ?");
            updateValues.push(holiday_date);
          }
  
          if (holiday_start_time) {
            updateFields.push("holiday_start_time = ?");
            updateValues.push(holiday_start_time);
          }
  
          if (holiday_end_time) {
            updateFields.push("holiday_end_time = ?");
            updateValues.push(holiday_end_time);
          }
  
          if (notes) {
            updateFields.push("notes = ?");
            updateValues.push(notes);
          }
  
          const updateQuery = `UPDATE holidays SET ${updateFields.join(
            ", "
          )} WHERE holiday_id = ?`;
  
          db.query(updateQuery, [...updateValues, hid], (err, result) => {
            if (err) {
              return res.status(500).json({
                success: false,
                message: "Failed to update details",
              });
            } else {
              return res.status(200).json({
                success: true,
                message: "Holiday Details updated successfully",
              });
            }
          });
        } else {
          return res.status(404).json({
            success: false,
            message: "holiday ID not found",
          });
        }
      });
    } catch (error) {
      console.log(error);
      res.status(500).json({ success: false, message: error.message });
    }
  };
  const deleteHolidays = (req, res) => {
    try {
      const hid = req.params.hid;
      const deleteQuery = "DELETE FROM holidays WHERE holiday_id = ?";
      db.query(deleteQuery, hid, (err, result) => {
        if (err) {
          return res.status(400).json({ success: false, message: err.message });
        }
        return res
          .status(200)
          .json({ success: true, message: "Holiday deleted successfully" });
      });
    } catch (error) {
      console.log(error);
      return res.status(500).json({ success: false, message: error.message });
    }
  };

  const updateDoctorPaymentAllowSetting = (req, res) => {
    try {
      const branch = req.params.branch;
      const {
        doctor_payment,
        allow_insurance,
        sharewhatsapp,
        sharemail,
        sharesms,
        branchCategory
      } = req.body;
      const selectQuery = "SELECT * FROM branches WHERE branch_name = ?";
      db.query(selectQuery, branch, (err, result) => {
        if (err) {
            registrationLogger.log("error", err.message);
          return res.status(400).json({ success: false, message: err.message });
        }
        if (result && result.length > 0) {
          const updateFields = [];
          const updateValues = [];
  
          if (doctor_payment) {
            updateFields.push("doctor_payment = ?");
            updateValues.push(doctor_payment);
          }
  
          if (allow_insurance) {
            updateFields.push("allow_insurance = ?");
            updateValues.push(allow_insurance);
          }
  
          if (sharewhatsapp) {
            updateFields.push("sharewhatsapp = ?");
            updateValues.push(sharewhatsapp);
          }
  
          if (sharemail) {
            updateFields.push("sharemail = ?");
            updateValues.push(sharemail);
          }
  
          if (sharesms) {
            updateFields.push("sharesms = ?");
            updateValues.push(sharesms);
          }
          
           if (branchCategory) {
            updateFields.push("hospital_category = ?");
            updateValues.push(branchCategory);
          }
  
          const updateQuery = `UPDATE branches SET ${updateFields.join(
            ", "
          )} WHERE branch_name = ?`;
  
          db.query(updateQuery, [...updateValues, branch], (err, result) => {
            if (err) {
                registrationLogger.log("error", "Failed ton update details");
              return res.status(500).json({
                success: false,
                message: "Failed to update details",
              });
            } else {
                registrationLogger.log("info", "Branch details updated successfully");
              return res.status(200).json({
                success: true,
                message: "Branch Details updated successfully",
              });
            }
          });
        } else {
            registrationLogger.log("error", "Branch not found");
          return res.status(404).json({
            success: false,
            message: "Branch not found",
          });
        }
      });
    } catch (error) {
        registrationLogger.log("error", "internal server error");
      console.log(error);
      res.status(400).json({ success: false, message: error.message });
    }
  };
  const getInsuranceList = (req, res) => {
    try {
      const branch = req.params.branch;
      const selectQuery = "SELECT * FROM insurance_company WHERE branch_name = ?";
      db.query(selectQuery, branch, (err, result) => {
        if (err) {
          res.status(400).json({ success: false, message: err.message });
        }
        res.status(200).send(result);
      });
    } catch (error) {
      res.status(500).json({ success: false, message: "internal server error" });
    }
  };
  const addInsuranceCompany = (req, res) => {
    const dateTime = moment().tz("Asia/Kolkata").format("DD-MM-YYYY HH:mm:ss");
    try {
      const branch = req.params.branch;
      const { companyname, category, status } = req.body;
      const selectQuery =
        "SELECT * FROM insurance_company WHERE branch_name = ? AND companyname = ?";
      db.query(selectQuery, [branch, companyname], (err, result) => {
        if (err) {
          res.status(400).json({ success: false, message: err.message });
        }
        if (result && result.length > 0) {
          res.status(400).json({
            success: false,
            message: "insurance company already exists",
          });
        } else {
          const insertQuery =
            "INSERT INTO insurance_company (branch_name, companyname, category, status, added_date) VALUES (?,?,?,?, ?)";
          const insertParams = [branch, companyname, category, status, dateTime];
          db.query(insertQuery, insertParams, (err, result) => {
            if (err) {
              res.status(400).json({ success: false, message: err.message });
            }
            res
              .status(200)
              .json({ success: true, message: "data added successfully" });
          });
        }
      });
    } catch (error) {
      res.status(500).json({ success: false, message: "internal server error" });
    }
  };
  const updateInsuranceDetails = (req, res) => {
    try {
      const ins = req.params.ins;
      const branch = req.params.branch;
      const { companyname, category, status } = req.body;
      const selectQuery =
        "SELECT * FROM insurance_company WHERE ins_id = ? AND branch_name = ?";
      db.query(selectQuery, [ins, branch], (err, result) => {
        if (err) {
          res.status(400).json({ success: false, message: err.message });
        }
        if (result && result.length > 0) {
          const updateFields = [];
          const updateValues = [];
  
          if (companyname) {
            updateFields.push("companyname = ?");
            updateValues.push(companyname);
          }
  
          if (category) {
            updateFields.push("category = ?");
            updateValues.push(category);
          }
  
          if (status) {
            updateFields.push("status = ?");
            updateValues.push(status);
          }
  
          const updateQuery = `UPDATE insurance_company SET ${updateFields.join(
            ", "
          )} WHERE ins_id = ? AND branch_name = ?`;
  
          db.query(updateQuery, [...updateValues, ins, branch], (err, result) => {
            if (err) {
              return res.status(500).json({
                success: false,
                message: "Failed to update details",
              });
            } else {
              return res.status(200).json({
                success: true,
                message: "Branch Details updated successfully",
              });
            }
          });
        } else {
          res.status(400).json({ success: false, message: err.message });
        }
      });
    } catch (error) {
      res.status(500).json({ success: false, message: "internal server error" });
    }
  };
  const deleteInsurance = (req, res) => {
    try {
      const ins = req.params.ins;
      const branch = req.params.branch;
      const selectQuery =
        "SELECT * FROM insurance_company WHERE ins_id = ? AND branch_name = ?";
      db.query(selectQuery, [ins, branch], (err, result) => {
        if (err) {
          res.status(400).json({ success: false, message: err.message });
        }
        if (result && result.length > 0) {
          const deleteQuery =
            "DELETE FROM insurance_company WHERE ins_id = ? AND branch_name = ?";
          db.query(deleteQuery, [ins, branch], (err, result) => {
            if (err) {
              res.status(400).json({ success: false, message: err.message });
            }
            res
              .status(200)
              .json({ success: true, message: "Successfully deleted" });
          });
        } else {
          res
            .status(400)
            .json({ success: false, message: "insurance not found" });
        }
      });
    } catch (error) {
      res.status(500).json({ success: false, message: "internal server error" });
    }
  };
  const getBranch = (req, res) => {
    try {
      const getQuery = "SELECT * FROM branches";
      db.query(getQuery, (err, result) => {
        if (err) {
          res.status(500).send(err);
        }
        res.status(200).send(result);
      });
    } catch (error) {
      console.log(error);
      res.status(500).json({
        success: false,
        message: "Internal server error",
      });
    }
  };
  const getEmployeeDataByBranch = (req, res) => {
    try {
      const branch = req.params.branch;
      const getQuery = `SELECT * FROM employee_register WHERE branch_name = ?`;
      db.query(getQuery, [branch], (err, result) => {
        if (err) {
          res.status(400).send({ message: "error in fetching employee" });
        }
        res.json(result);
      });
    } catch (error) {
      console.log(error);
      res.status(500).json({
        success: false,
        message: "Internal server error",
      });
    }
  };
  const EnrollEmployee = async (req, res) => {
    try {
      const {
        branch,
        empName,
        empMobile,
        empGender,
        empEmail,
        empDesignation,
        empSalary,
        empAddress,
        status,
        morningShiftStartTime,
        morningShiftEndTime,
        eveningShiftStartTime,
        eveningShiftEndTime,
        allDayShiftStartTime,
        allDayShiftEndTime,
        working_days,
        password,
        empRole,
        availability,
      } = req.body;
  
      const empProfilePicture = req.file;
      console.log(empProfilePicture, "pro");
  
      const imageUrl = `http://localhost:${PORT}/empProfilePicture/${empProfilePicture?.filename}`;
  
      console.log("profilePicture: 770", imageUrl);
  
      console.log(req.body);
      console.log(password, "23");
  
      // Validations
      const requiredFields = [
        branch,
        empName,
        empMobile,
        empEmail,
        empGender,
        empDesignation,
        password,
        empRole,
        empSalary,
        empAddress,
      ];
      if (requiredFields.some((field) => !field)) {
        // registrationLogger.log("error", "All fields are required");
        return res.status(400).json({ error: "All fields are required" });
      }
  
      // Hash the "password" and "cpassword"
      const saltRounds = 10;
      const hashedPassword = bcrypt.hashSync(password, saltRounds);
      console.log(hashedPassword);
  
      // Find the highest empID in the database for the given pattern
      const highestEmpIDQuery =
        "SELECT MAX(CAST(SUBSTRING_INDEX(employee_ID, '_', -1) AS UNSIGNED)) AS maxID FROM employee_register WHERE employee_ID LIKE ?";
      const pattern = "dg_%";
  
      db.query(highestEmpIDQuery, [pattern], (err, result) => {
        if (err) {
          console.error("Error getting highest empID:", err);
          res.status(500).json({ error: "Internal server error" });
        } else {
          let nextID = 1;
          if (result[0].maxID !== null) {
            nextID = result[0].maxID + 1;
          }
          const newEmpID = `dg_${nextID}`;
  
          // Check if the user already exists
          const checkUserQuery =
            "SELECT * FROM employee_register where employee_email = ?";
  
          db.query(checkUserQuery, [empEmail], (err, result) => {
            if (err) {
              console.error("Error checking if user exists in MySQL:", err);
              res.status(500).json({ error: "Internal server error" });
            } else {
              // Check if there are any rows in the result
              if (result.length > 0) {
                registrationLogger.log("error", "User already exists.");
                return res.status(400).json({
                  error: "User already exists.",
                });
              } else {
                // User not found, proceed with registration
                const insertUserQuery = `
                      INSERT INTO employee_register (
                        employee_ID, branch_name, employee_name,	employee_mobile, employee_email, gender, employee_designation,	employee_password, working_days,	employee_role, salary, address,	employee_status, morning_shift_start_time, morning_shift_end_time, evening_shift_start_time, evening_shift_end_time, allday_shift_start_time, allday_shift_end_time, availability, employee_picture
                      ) VALUES (?, ?, ?, ?, ?, ?, ?, ?,?,?,?,?,?,?,?,?,?,?,?,?,?)
                    `;
  
                const insertUserParams = [
                  newEmpID,
                  branch,
                  empName,
                  empMobile,
                  empEmail,
                  empGender,
                  empDesignation,
                  hashedPassword,
                  working_days,
                  empRole,
                  empSalary,
                  empAddress,
                  status,
                  morningShiftStartTime,
                  morningShiftEndTime,
                  eveningShiftStartTime,
                  eveningShiftEndTime,
                  allDayShiftStartTime,
                  allDayShiftEndTime,
                  availability,
                  imageUrl,
                ];
  
                db.query(
                  insertUserQuery,
                  insertUserParams,
                  (insertErr, insertResult) => {
                    if (insertErr) {
                      console.error("Error inserting user:", insertErr);
                      res.status(500).json({ error: "Internal server error" });
                    } else {
                      console.log("User registered successfully");
                      registrationLogger.log(
                        "info",
                        "Registrations successfully registered"
                      );
                      return res.status(200).json({
                        success: true,
                        message: "Employee registered successfully",
                      });
                    }
                  }
                );
              }
            }
          });
        }
      });
    } catch (error) {
      console.log(error);
      // registrationLogger.log("error", "registration failed");
      res.status(500).json({
        success: false,
        message: "Error in registration",
        error: error.message,
      });
    }
  };
  
const addSuperAdminNotify = (req, res) => {
    try {
      const { title, branch, event_msg, open, status } = req.body;
      const insertQuery =
        "INSERT INTO employee_timeline (title, branch_name, event_msg,	open,	status) VALUES (?,?,?,?, ?)";
      db.query(
        insertQuery,
        [title, branch, event_msg, open, status],
        (err, result) => {
          if (err) {
            res.status(400).json({ success: false, message: err.message });
          }
          res.status(200).send(result);
        }
      );
    } catch (error) {
      console.log(error);
      res.status(500).json({ success: false, message: error.message });
    }
  };
  const editEmployeeDetails = (req, res) => {
    try {
      const branch = req.params.branch;
      const empId = req.params.empID;
      const {
        empName,
        empMobile,
        empGender,
        empEmail,
        empDesignation,
        empSalary,
        empAddress,
        status,
        morningShiftStartTime,
        morningShiftEndTime,
        eveningShiftStartTime,
        eveningShiftEndTime,
        allDayShiftStartTime,
        allDayShiftEndTime,
        working_days,
        password,
        empRole,
        availability,
      } = req.body;
  
      const empProfilePicture = req.file;
      console.log(empProfilePicture, "pro");
  
      const imageUrl = `http://localhost:${PORT}/empProfilePicture/${empProfilePicture?.filename}`;
  
      console.log("profilePicture: 770", imageUrl);
  
      console.log(req.body);
      console.log(password, "23");
  
      const getQuery = `SELECT * FROM employee_register WHERE branch_name = ? AND employee_ID = ?`;
      db.query(getQuery, [branch, empId], (err, result) => {
        if (err) {
          return res.status(500).json({
            success: false,
            message: "Internal server error",
          });
        }
  
        if (result && result.length > 0) {
          const updateFields = [];
          const updateValues = [];
  
          if (empName) {
            updateFields.push("employee_name = ?");
            updateValues.push(empName);
          }
  
          if (empMobile) {
            updateFields.push("employee_mobile = ?");
            updateValues.push(empMobile);
          }
  
          if (empEmail) {
            updateFields.push("employee_email = ?");
            updateValues.push(empEmail);
          }
  
          if (empDesignation) {
            updateFields.push("employee_designation = ?");
            updateValues.push(empDesignation);
          }
  
          if (empRole) {
            updateFields.push("employee_role = ?");
            updateValues.push(empRole);
          }
  
          if (empGender) {
            updateFields.push("gender = ?");
            updateValues.push(empGender);
          }
          if (empSalary) {
            updateFields.push("salary = ?");
            updateValues.push(empSalary);
          }
          if (empAddress) {
            updateFields.push("address = ?");
            updateValues.push(empAddress);
          }
  
          if (status) {
            updateFields.push("employee_status = ?");
            updateValues.push(status);
          }
  
          if (morningShiftStartTime) {
            updateFields.push("morning_shift_start_time = ?");
            updateValues.push(morningShiftStartTime);
          }
  
          if (morningShiftEndTime) {
            updateFields.push("morning_shift_end_time = ?");
            updateValues.push(morningShiftEndTime);
          }
  
          if (eveningShiftStartTime) {
            updateFields.push("evening_shift_start_time = ?");
            updateValues.push(eveningShiftStartTime);
          }
  
          if (eveningShiftEndTime) {
            updateFields.push("evening_shift_end_time = ?");
            updateValues.push(eveningShiftEndTime);
          }
  
          if (allDayShiftStartTime) {
            updateFields.push("allday_shift_start_time = ?");
            updateValues.push(allDayShiftStartTime);
          }
  
          if (allDayShiftEndTime) {
            updateFields.push("allday_shift_end_time = ?");
            updateValues.push(allDayShiftEndTime);
          }
  
          if (working_days) {
            updateFields.push("working_days = ?");
            updateValues.push(working_days);
          }
  
          if (password) {
            updateFields.push("employee_password = ?");
            updateValues.push(password);
          }
  
          if (availability) {
            updateFields.push("availability = ?");
            updateValues.push(availability);
          }
  
          if (empProfilePicture) {
            updateFields.push("employee_picture = ?");
            updateValues.push(imageUrl);
          }
  
          const updateQuery = `UPDATE employee_register SET ${updateFields.join(
            ", "
          )} WHERE branch_name = ? AND employee_ID = ?`;
  
          db.query(
            updateQuery,
            [...updateValues, branch, empId],
            (err, result) => {
              if (err) {
                return res.status(500).json({
                  success: false,
                  message: "Failed to update details",
                });
              } else {
                return res.status(200).json({
                  success: true,
                  message: "Details updated successfully",
                });
              }
            }
          );
        } else {
          return res.status(404).json({
            success: false,
            message: "User not found",
          });
        }
      });
    } catch (error) {
      console.log(error);
      res.status(400).json({ success: false, message: "Internal Server Error" });
    }
  };
  const getTreatmentViaId = (req, res) => {
    try {
      const tid = req.params.tid;
      const selectQuery =
        "SELECT * FROM treatment_list_copy WHERE treatment_id = ?";
      db.query(selectQuery, tid, (err, result) => {
        if (err) {
          res.status(400).json({ success: false, message: err.message });
        }
        res.status(200).send(result);
      });
    } catch (error) {
      res.status(500).json({ success: false, message: "Internal server error" });
    }
  };
  const getProcedureList = (req, res) => {
    try {
      const selectQuery = "SELECT * FROM treat_procedure_list";
      db.query(selectQuery, (err, result) => {
        if (err) {
          res.status(400).json({ success: false, message: err.message });
        }
        res.status(200).send(result);
      });
    } catch (error) {
      res.status(500).json({ success: false, message: "Internal server error" });
    }
  };
  const addTreatment = (req, res) => {
    try {
      const {
        treat_procedure_id,
        treat_procedure_name,
        treatment_name,
        nabh,
        non_nabh,
        value,
        label,
      } = req.body;
      const requiredFields = [
        treat_procedure_id,
        treat_procedure_name,
        treatment_name,
        nabh,
        non_nabh,
        value,
        label,
      ];
      if (requiredFields.some((field) => !field)) {
        registrationLogger.log("error", "All fields are required");
        return res.status(400).json({ error: "All fields are required" });
      }
  
      const selectQuery =
        "SELECT * FROM treatment_list_copy WHERE treatment_name = ?";
      db.query(selectQuery, [treatment_name], (err, result) => {
        if (err) {
          registrationLogger.log("error", "treatment name not found");
          return res.status(500).json({ success: false, error: err.message });
        }
        if (result.length > 0) {
          registrationLogger.log("error", "treatment already exist");
          return res.status(400).send("Treatment already exists");
        }
  
        const insertQuery = `INSERT INTO treatment_list_copy (treat_procedure_id, treat_procedure_name, treatment_name, nabh, non_nabh, value, label) VALUES (?, ?, ?, ?, ?, ?, ?)`;
        const insertUserParams = [
          treat_procedure_id,
          treat_procedure_name,
          treatment_name,
          nabh,
          non_nabh,
          value,
          label,
        ];
  
        db.query(insertQuery, insertUserParams, (errInsert, resultInsert) => {
          if (errInsert) {
             registrationLogger.log(
               "error",
               "Error while inserting treatment"
             );
            return res.status(500).json({
              success: false,
              message: "Error while inserting treatment",
              error: errInsert.message,
            });
          }
          registrationLogger.log("info", "Treatment added successfully");
          res
            .status(200)
            .json({ success: true, message: "Treatment added successfully" });
        });
      });
    } catch (error) {
      registrationLogger.log("error", "internal server error");
      console.error(error);
      res.status(500).json({ success: false, message: "Internal server error" });
    }
  };
  const getTreatmentList = (req, res) => {
    try {
      const getQuery = "SELECT * FROM	treatment_list_copy";
      db.query(getQuery, (err, result) => {
        if (err) {
          res.status(400).send(err.message);
        } else {
          res.status(200).send(result);
        }
      });
    } catch (error) {
      console.log(error);
      res.status(500).json({ success: false, message: "Internal server error" });
    }
  };

  const updateTreatmentDetails = (req, res) => {
    try {
      const treatID = req.params.id;
      const {
        treat_procedure_id,
        treat_procedure_name,
        treatment_name,
        nabh,
        non_nabh,
        value,
        label,
      } = req.body;
      // console.log();
      const selectQuery =
        "SELECT * FROM treatment_list_copy WHERE treatment_id = ?";
      db.query(selectQuery, [treatID], (err, result) => {
        if (err) {
            registrationLogger.log("error", err.message);
          res.status(400).json({ success: false, message: err.message });
        } else {
          if (result && result.length > 0) {
            const updateFields = [];
            const updateValues = [];
  
            if (treat_procedure_id && treat_procedure_name) {
              updateFields.push(
                "treat_procedure_id = ? AND treat_procedure_name = ?"
              );
              updateValues.push(treat_procedure_id, treat_procedure_name);
            }
  
            // if (treat_procedure_name) {
            //   updateFields.push("treat_procedure_name = ?");
            //   updateValues.push(treat_procedure_name);
            // }
  
            if (treatment_name) {
              updateFields.push("treatment_name = ?");
              updateValues.push(treatment_name);
            }
  
            if (nabh) {
              updateFields.push("nabh = ?");
              updateValues.push(nabh);
            }
  
            if (non_nabh) {
              updateFields.push("non_nabh = ?");
              updateValues.push(non_nabh);
            }
  
            if (value) {
              updateFields.push("value = ?");
              updateValues.push(value);
            }
  
            if (label) {
              updateFields.push("label = ?");
              updateValues.push(label);
            }
  
            const updateQuery = `UPDATE treatment_list_copy SET ${updateFields.join(
              ", "
            )} WHERE treatment_id = ?`;
  
            db.query(updateQuery, [...updateValues, treatID], (err, result) => {
              if (err) {
                  registrationLogger.log("error", "failed to update details");
                return res
                  .status(500)
                  .json({ success: false, message: "failed to update details" });
              } else {
                  registrationLogger.log("info", "Details updated successfully");
                return res.status(200).json({
                  success: true,
                  message: "Details updated successfully",
                });
              }
            });
          } else {
              registrationLogger.log("error", "treatment not found");
            return res
              .status(404)
              .json({ success: false, message: "treatment not found" });
          }
        }
      });
    } catch (error) {
        registrationLogger.log("error", "internal server error");
      console.log(error);
      res.status(500).json({ success: false, message: "Internal server error" });
    }
  };
  const deleteTreatment = (req, res) => {
    try {
      const tid = req.params.tid;
      const deleteQuery = "DELETE FROM treatment_list WHERE treatment_id = ?";
      db.query(deleteQuery, tid, (err, result) => {
        if (err) {
          return res.status(400).json({ success: false, message: err.message });
        }
        return res
          .status(200)
          .json({ success: true, message: "Treatment deleted successfully" });
      });
    } catch (error) {
      console.log(error);
      return res.status(500).json({ success: false, message: error.message });
    }
  };
  const getEmployeeDataByBranchAndId = (req, res) => {
    try {
      const branch = req.params.branch;
      const empId = req.params.empId;
      const getQuery = `SELECT * FROM employee_register WHERE branch_name = ? AND employee_ID = ?`;
      db.query(getQuery, [branch, empId], (err, result) => {
        if (err) {
          res.status(400).send({ message: "error in fetching employee" });
        }
        res.json(result);
      });
    } catch (error) {
      console.log(error);
      res.status(500).json({
        success: false,
        message: "Internal server error",
      });
    }
  };

  const updateBranchDetails = (req, res) => {
    try {
      const bid = req.params.bid;
      const {
        name,
        address,
        contact,
        open_time,
        close_time,
        appoint_slot_duration,
        account_number, 
        bank_name,      
        upi_id,         
        ifsc_code       
      } = req.body;
  
      const files = req.files;
  
      // Define additional directories
      const additionalDirectories = "/home/vimubdsa/dentalguru-lite.vimubds5.a2hosted.com/branchHeadFootImg/";
  
      if (!fs.existsSync(additionalDirectories)) {
        fs.mkdirSync(additionalDirectories, { recursive: true });
      }
  
      for (const fieldname in files) {
        for (const file of files[fieldname]) {
          const originalFilePath = path.join("/home/vimubdsa/dentalguru-lite.vimubds5.a2hosted.com/branchHeadFootImg/", file.filename);
          const newFilePath = path.join(additionalDirectories, file.filename);
          fs.copyFileSync(originalFilePath, newFilePath);
        }
      }
  
      const urlAdd = "https://dentalguru-lite.vimubds5.a2hosted.com/branchHeadFootImg";
  
      const head_img = req.files["head_img"]
        ? `${urlAdd}/${req.files["head_img"][0].filename}`
        : null;
      const foot_img = req.files["foot_img"]
        ? `${urlAdd}/${req.files["foot_img"][0].filename}`
        : null;
  
      const selectQuery = "SELECT * FROM branches WHERE branch_id = ?";
      db.query(selectQuery, bid, (err, result) => {
        if (err) {
          registrationLogger.log("error", "internal server error");
          return res.status(400).json({ success: false, message: err.message });
        }
        if (result && result.length > 0) {
          const updateFields = [];
          const updateValues = [];
  
          if (name) {
            updateFields.push("branch_name = ?");
            updateValues.push(name);
          }
  
          if (address) {
            updateFields.push("branch_address = ?");
            updateValues.push(address);
          }
  
          if (contact) {
            updateFields.push("branch_contact = ?");
            updateValues.push(contact);
          }
  
          if (open_time) {
            updateFields.push("open_time = ?");
            updateValues.push(open_time);
          }
  
          if (close_time) {
            updateFields.push("close_time = ?");
            updateValues.push(close_time);
          }
  
          if (appoint_slot_duration) {
            updateFields.push("appoint_slot_duration = ?");
            updateValues.push(appoint_slot_duration);
          }
  
          // Update bank-related fields
          if (account_number) {
            updateFields.push("account_number = ?");
            updateValues.push(account_number);
          }
  
          if (bank_name) {
            updateFields.push("bank_name = ?");
            updateValues.push(bank_name);
          }
  
          if (upi_id) {
            updateFields.push("upi_id = ?");
            updateValues.push(upi_id);
          }
  
          if (ifsc_code) {
            updateFields.push("ifsc_code = ?");
            updateValues.push(ifsc_code);
          }
  
          if (head_img) {
            updateFields.push("head_img = ?");
            updateValues.push(head_img);
          }
  
          if (foot_img) {
            updateFields.push("foot_img = ?");
            updateValues.push(foot_img);
          }
  
          const updateQuery = `UPDATE branches SET ${updateFields.join(", ")} WHERE branch_id = ?`;
  
          db.query(updateQuery, [...updateValues, bid], (err, result) => {
            if (err) {
              registrationLogger.log("error", "Failed to update details");
              return res.status(500).json({
                success: false,
                message: "Failed to update details",
              });
            } else {
              registrationLogger.log("info", "Branch Details updated successfully");
              return res.status(200).json({
                success: true,
                message: "Branch Details updated successfully",
              });
            }
          });
        } else {
          registrationLogger.log("error", "Branch not found");
          return res.status(404).json({
            success: false,
            message: "Branch not found",
          });
        }
      });
    } catch (error) {
      registrationLogger.log("error", "internal server error");
      console.log(error);
      res.status(500).json({ success: false, message: error.message });
    }
  };
  

  

  module.exports = {
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
    updateBranchDetails
};
  