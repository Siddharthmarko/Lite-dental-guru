// import "./App.css";

import { Route, Routes, useNavigate } from "react-router-dom";
import DoctorDashboard from "./pages/DoctorPage/DoctorDashboard";
import ProfileDashboard from "./components/Doctor/Profile/ProfileDashboard";
import PatientProfile from "./pages/DoctorPage/PatientProfile";
// import AllPatient from "./pages/DoctorPage/AllPatient";
import ExaminationDashBoard from "./components/Doctor/Examination/ExaminationDashBoard";
import ExaminationDashBoardPatient from "./components/Doctor/Examination/ExaminationDashBoardPatient";
import ExaminationDashBoardPediatric from "./components/Doctor/Examination/ExaminationDashBoardPediatric";
import TreatmentDashBoard from "./components/Doctor/Treatment/TreatmentDashBoard";
import PrescriptionDashBoard from "./components/Doctor/Prescription/PrescriptionDashBoard";
import TPrescription from "./components/Doctor/Prescription/TreatmentPrescription/TPrescription";
import TPrescriptionDash from "./components/Doctor/Prescription/TreatmentPrescription/TPrescriptionDash";
import DoctorLogin from "./components/Doctor/Login/DoctorLogin";
import NewTreatment from "./components/Doctor/Treatment/NewTreatment";
import TreatmentForm from "./components/Doctor/Treatment/TreatmentForm";
import TreatmentDashTwo from "./components/Doctor/Treatment/TreatmentDashTwo";
import NewTreatPrescription from "./components/Doctor/Prescription/TreatmentPrescription/NewTreatPrescription";
import ViewTreatPrescription from "./components/Doctor/Prescription/TreatmentPrescription/ViewTreatPrescription";
import TreatSuggestDashs from "./components/Doctor/Treatment Suggestion/TreatSuggestDashs";
import SecurityAmount from "./components/Doctor/Treatment Suggestion/SecurityAmount";
import PrintSecurityAmt from "./components/Doctor/Treatment Suggestion/PrintSecurityAmt";
import CreatePrescrip from "./components/Doctor/Prescription/CreatePrescrip";
import { useDispatch, useSelector } from "react-redux";
import PatientBillsByTpid from "./pages/PatientBills/PatientBillsByTpid";
import AttendanceLeave from "./pages/DoctorPage/AttendanceLeave";
import PatintDuePaymentPrint from "./pages/PatientBills/PatintDuePaymentPrint";
import PasswordReset from "./pages/PasswordReset";
import ScrollToTop from "./components/ScrollToTop";
import Print_Oral_Blood from "./pages/DoctorPage/Print_Oral_Blood";
import { useEffect, useState } from "react";
import axios from "axios";
import { clearUser, toggleTableRefresh } from "./redux/user/userSlice";
import animationData from "./animation/animation-four.json";
import Lottie from "lottie-react";
import PrescriptionDetails from "./pages/DoctorPage/PrescriptionDetails";
import ViewTreatPrescriptionList from "./components/Doctor/Prescription/TreatmentPrescription/ViewTreatPrescriptionList";
import PrescriptionQuick from "./pages/DoctorPage/PrescriptionQuick";
import SittingBill from "./components/Doctor/Treatment/SittingBill";
import QPrescriptionForm from "./components/Doctor/Prescription/Quick Prescription/QPrescriptionForm";
import ViewQuickPrescription from "./pages/DoctorPage/ViewQuickPrescription";
import Receptioinstdash from "./components/receptionist/pages/receptionist/Receptioinstdash";
import AllPatient from "./components/receptionist/pages/receptionist/AllPatient";
// import DoctorSection from "./pages/receptionist/DoctorSection";

/* ---Receptionist */

import Registration from "./components/receptionist/components/receptionist/Registration";
import UniversalLogin from "./components/receptionist/pages/UniversalLogin";
// import PasswordReset from "./components/receptionist/pages/PasswordReset";
import EditPopup from "./components/receptionist/components/receptionist/Appointment/EditPopup";
import ModifyPopup from "./components/receptionist/components/receptionist/Appointment/ModifyPopup";
import DeletePopup from "./components/receptionist/components/receptionist/Appointment/DeletePopup";
import Doctorprofile from "./components/receptionist/components/receptionist/DoctorSection/Doctorprofile";
import PrintOpdBill from "./components/receptionist/components/receptionist/ReceptioinstDashboard/PrintOpdBill";
// import PrintSecurityAmt from "./components/receptionist/components/receptionist/SecurityAmount/PrintSecurityAmt";

import Receptionistdash from "./components/receptionist/pages/receptionist/Receptioinstdash";
// import PatientProfile from "./components/receptionist/pages/receptionist/PatientProfile";
// import AllPatient from "./components/receptionist/pages/receptionist/AllPatient";
import AppointmentSection from "./components/receptionist/pages/receptionist/AppointmentSection";

import BillSection from "./components/receptionist/pages/receptionist/BillSection";
import DoctorSection from "./components/receptionist/pages/receptionist/DoctorSection";

import VideoSection from "./components/receptionist/pages/receptionist/VideoSection";
import LabSection from "./components/receptionist/pages/receptionist/LabSection";
import ReportSection from "./components/receptionist/pages/receptionist/ReportSection";
import NewPatient from "./components/receptionist/pages/receptionist/NewPatient";
import Inquiry from "./components/receptionist/pages/receptionist/Inquiry";

import OpdCollection from "./components/receptionist/pages/receptionist/OpdColletion";
import Profile from "./components/receptionist/pages/receptionist/Profile";
// import SecurityAmount from "./components/receptionist/pages/receptionist/SecurityAmount ";

import BranchInfo from "./components/receptionist/pages/receptionist/BranchInfo";
// import AttendanceLeave from "./components/receptionist/pages/receptionist/AttendanceLeave";
import PatientsDue from "./components/receptionist/pages/receptionist/PatientsDue";
// import PatintDuePaymentPrint from "./components/receptionist/pages/receptionist/PatintDuePaymentPrint";
import PatientsPaid from "./components/receptionist/pages/receptionist/PatientsPaid";
// import PatientBillsByTpid from "./components/receptionist/pages/receptionist/PatientBillsByTpid";
import F404page from "./components/receptionist/pages/receptionist/F404page";
import SittingBillDetails from "./components/receptionist/pages/receptionist/SittingBillDetails";
import SittingBillPayment from "./components/receptionist/pages/receptionist/SittingBillPayment";
// import SittingBill from "./components/receptionist/pages/receptionist/SittingBill";
import SittingPaidBillDetails from "./components/receptionist/pages/receptionist/SittingPaidBillDetails";
import AllCreditInvoice from "./components/receptionist/pages/receptionist/AllCreditInvoice";
import FinalInvoices from "./components/receptionist/pages/receptionist/FinalInvoices";
import CreditPatientBillsByTpid from "./components/receptionist/pages/receptionist/CreditPatientBillsByTpid";
import CreditSittingBill from "./components/receptionist/pages/receptionist/CreditSittingBill";
import ReceptionSittingBill from "./components/receptionist/pages/receptionist/ReceptionSittingBill";

// ************** Super Admin Routes Start Here *******************

import ClinicSetting from "./components/superAdmin/ClinicSetting";
import ManageStaff from "./components/superAdmin/ManageStaff";
import ClinicConfigSetting from "./components/superAdmin/ClinicConfigSetting";
import TreatmentSetting from "./components/superAdmin/TreatmentSetting";
import CalenderSetting from "./components/superAdmin/CalenderSetting";
import EmployeeProfile from "./components/superAdmin/EmployeeProfile";
import Branches from "./components/superAdmin/Branches";
import Header from "./components/receptionist/components/receptionist/Header";
import Sider from "./components/receptionist/components/receptionist/Sider";
import Footer from "./components/receptionist/components/receptionist/Footer";
import styled from "styled-components";

function App() {
  const navigate = useNavigate();
  const dispatch = useDispatch();
  const user = useSelector((state) => state?.user?.currentUser);
  const [attend, setAttend] = useState(true);
  const [todayAttendance, setTodayAttendance] = useState([]);
  console.log(user);
  const { refreshTable } = useSelector((state) => state.user);
  const date = new Date().toISOString().slice(0, 10);
  const [loading, setLoading] = useState(false);

  const logoutHandleByToken = () => {
    // alert("Token Expired! You have been logged out");
    dispatch(clearUser());
    navigate("/");
  };

  const defaultOptions = {
    loop: true,
    autoplay: true,
    animationData: animationData,
    rendererSettings: {
      preserveAspectRatio: "xMidYMid slice",
    },
  };

  // const getTodayAttendance = async () => {
  //   try {
  //     setLoading(true);
  //     const response = await axios.get(
  //       `https://dentalguru-lite.vimubds5.a2hosted.com/api/doctor/getTodayAttendance/${user?.branch_name}/${user?.employee_ID}/${date}`,
  //       {
  //         headers: {
  //           "Content-Type": "application/json",
  //           Authorization: `Bearer ${user?.token}`,
  //         },
  //       }
  //     );
  //     setLoading(false);
  //     setTodayAttendance(response?.data?.data);
  //   } catch (error) {
  //     setLoading(false);
  //     if (error.response && error.response.status === 401) {
  //       const errorMessage = error.response.data.message;
  //       if (errorMessage === "Unauthorized - Token expired") {
  //         logoutHandleByToken();
  //       } else {
  //         console.log("Unauthorized access:", errorMessage);
  //       }
  //     } else {
  //       setLoading(false);
  //       console.log("An error occurred:", error.message);
  //     }
  //   }
  // };

  // useEffect(() => {
  //   getTodayAttendance();
  //   const interval = setInterval(() => {
  //     dispatch(toggleTableRefresh());
  //   }, 2000);

  //   return () => {
  //     clearInterval(interval);
  //     // console.log("Interval cleared.");
  //   };
  // }, [refreshTable]);

  const getTodayAttendance = async () => {
    try {
      setLoading(true);
      const response = await axios.get(
        `https://dentalguru-lite.vimubds5.a2hosted.com/api/doctor/getTodayAttendance/${user?.branch_name}/${user?.employee_ID}/${date}`,
        {
          headers: {
            "Content-Type": "application/json",
            Authorization: `Bearer ${user?.token}`,
          },
        }
      );
      setTodayAttendance(response?.data?.data);
    } catch (error) {
      if (error.response && error.response.status === 401) {
        const errorMessage = error.response.data.message;
        if (errorMessage === "Unauthorized - Token expired") {
          logoutHandleByToken();
        } else {
          console.log("Unauthorized access:", errorMessage);
        }
      } else {
        console.log("An error occurred:", error.message);
      }
    } finally {
      setLoading(false);
    }
  };

  useEffect(() => {
    getTodayAttendance();
  }, []);

  console.log(todayAttendance);

  return (
    <>
      <Styling>
        <ScrollToTop />

        <Routes>
          {/* ************** Doctor Routes Start Here ******************* */}

          <Route
            path="/"
            element={user === null ? <DoctorLogin /> : <Receptioinstdash />}
          />

          <Route path="/AllPatient" element={<AllPatient />} />
          <Route
            path="/doctor-dashboard"
            element={
              user === null ? (
                <DoctorLogin />
              ) : (
                //  : todayAttendance.length === 0 ? (
                //   <AttendanceLeave />
                // )
                <DoctorDashboard />
              )
            }
          />

          <Route
            path="/dashboard"
            element={
              user === null ? (
                <DoctorLogin />
              ) : loading ? (
                <>
                  {" "}
                  <Lottie
                    options={defaultOptions}
                    height={300}
                    width={400}
                    style={{ background: "transparent" }}
                  ></Lottie>
                </>
              ) : (
                // ) : todayAttendance.length === 0 ? (
                //   <AttendanceLeave />
                <Receptioinstdash />
              )
            }
          />
          <Route
            path="/examination-Dashboard/:id/:uhid"
            element={
              user === null ? (
                <DoctorLogin />
              ) : loading ? (
                <>
                  {" "}
                  <Lottie
                    options={defaultOptions}
                    height={300}
                    width={400}
                    style={{ background: "transparent" }}
                  ></Lottie>
                </>
              ) : (
                // ) : todayAttendance.length === 0 ? (
                //   <AttendanceLeave />
                <ExaminationDashBoard />
              )
            }
          />
          <Route
            path="/ExaminationDashBoardPatient/:id/:dcat/:tpid"
            element={
              user === null ? (
                <DoctorLogin />
              ) : loading ? (
                <>
                  {" "}
                  <Lottie
                    options={defaultOptions}
                    height={300}
                    width={400}
                    style={{ background: "transparent" }}
                  ></Lottie>
                </>
              ) : (
                // ) : todayAttendance.length === 0 ? (
                //   <AttendanceLeave />
                <ExaminationDashBoardPatient />
              )
            }
          />
          <Route
            path="/ExaminationDashBoardPediatric/:id/:dcat/:tpid"
            element={
              user === null ? (
                <DoctorLogin />
              ) : loading ? (
                <>
                  {" "}
                  <Lottie
                    options={defaultOptions}
                    height={300}
                    width={400}
                    style={{ background: "transparent" }}
                  ></Lottie>
                </>
              ) : (
                // : todayAttendance.length === 0 ? (
                //   <AttendanceLeave />
                // )
                <ExaminationDashBoardPediatric />
              )
            }
          />
          <Route
            path="/treatmentSuggestion/:id/:tpid"
            element={
              user === null ? (
                <DoctorLogin />
              ) : loading ? (
                <>
                  {" "}
                  <Lottie
                    options={defaultOptions}
                    height={300}
                    width={400}
                    style={{ background: "transparent" }}
                  ></Lottie>
                </>
              ) : (
                // ) : todayAttendance.length === 0 ? (
                //   <AttendanceLeave />
                <TreatSuggestDashs />
              )
            }
          />
          <Route
            path="/SecurityAmount/:id/:tpid"
            element={
              user === null ? (
                <DoctorLogin />
              ) : loading ? (
                <>
                  {" "}
                  <Lottie
                    options={defaultOptions}
                    height={300}
                    width={400}
                    style={{ background: "transparent" }}
                  ></Lottie>
                </>
              ) : (
                //    ) : todayAttendance.length === 0 ? (
                //              <AttendanceLeave />
                <SecurityAmount />
              )
            }
          />
          <Route
            path="/print-security-bill/:sa_id/:tpid"
            element={
              user === null ? (
                <DoctorLogin />
              ) : loading ? (
                <>
                  {" "}
                  <Lottie
                    options={defaultOptions}
                    height={300}
                    width={400}
                    style={{ background: "transparent" }}
                  ></Lottie>
                </>
              ) : (
                //    ) : todayAttendance.length === 0 ? (
                //              <AttendanceLeave />
                <PrintSecurityAmt />
              )
            }
          />
          <Route
            path="/TreatmentDashBoard/:tpid/:appoint_id"
            element={
              user === null ? (
                <DoctorLogin />
              ) : loading ? (
                <>
                  {" "}
                  <Lottie
                    options={defaultOptions}
                    height={300}
                    width={400}
                    style={{ background: "transparent" }}
                  ></Lottie>
                </>
              ) : (
                // ) : todayAttendance.length === 0 ? (
                //   <AttendanceLeave />
                <TreatmentDashBoard />
              )
            }
          />
          <Route
            path="/NewTreatment/:id/:tpid"
            element={
              user === null ? (
                <DoctorLogin />
              ) : loading ? (
                <>
                  {" "}
                  <Lottie
                    options={defaultOptions}
                    height={300}
                    width={400}
                    style={{ background: "transparent" }}
                  ></Lottie>
                </>
              ) : (
                //    ) : todayAttendance.length === 0 ? (
                //              <AttendanceLeave />
                <NewTreatment />
              )
            }
          />
          <Route
            path="/treatProducer/:id/:appointment_id"
            element={
              user === null ? (
                <DoctorLogin />
              ) : loading ? (
                <>
                  {" "}
                  <Lottie
                    options={defaultOptions}
                    height={300}
                    width={400}
                    style={{ background: "transparent" }}
                  ></Lottie>
                </>
              ) : (
                //    ) : todayAttendance.length === 0 ? (
                //              <AttendanceLeave />
                <TreatmentForm />
              )
            }
          />
          <Route
            path="/treatmentDashTwo/:tsid/:appoint_id/:tp_id/:treatment"
            element={
              user === null ? (
                <DoctorLogin />
              ) : loading ? (
                <>
                  {" "}
                  <Lottie
                    options={defaultOptions}
                    height={300}
                    width={400}
                    style={{ background: "transparent" }}
                  ></Lottie>
                </>
              ) : (
                // ) : todayAttendance.length === 0 ? (
                //   <AttendanceLeave />
                <TreatmentDashTwo />
              )
            }
          />
          <Route
            path="/NewTreatPrescription/:id"
            element={
              user === null ? (
                <DoctorLogin />
              ) : loading ? (
                <>
                  {" "}
                  <Lottie
                    options={defaultOptions}
                    height={300}
                    width={400}
                    style={{ background: "transparent" }}
                  ></Lottie>
                </>
              ) : (
                //    ) : todayAttendance.length === 0 ? (
                //              <AttendanceLeave />
                <NewTreatPrescription />
              )
            }
          />
          <Route
            path="/PrescriptionDashBoard"
            element={
              user === null ? (
                <DoctorLogin />
              ) : loading ? (
                <>
                  {" "}
                  <Lottie
                    options={defaultOptions}
                    height={300}
                    width={400}
                    style={{ background: "transparent" }}
                  ></Lottie>
                </>
              ) : (
                //    ) : todayAttendance.length === 0 ? (
                //              <AttendanceLeave />
                <PrescriptionDashBoard />
              )
            }
          />
          <Route
            path="/TPrescription"
            element={
              user === null ? (
                <DoctorLogin />
              ) : loading ? (
                <>
                  {" "}
                  <Lottie
                    options={defaultOptions}
                    height={300}
                    width={400}
                    style={{ background: "transparent" }}
                  ></Lottie>
                </>
              ) : (
                //    ) : todayAttendance.length === 0 ? (
                //              <AttendanceLeave />
                <TPrescription />
              )
            }
          />
          <Route
            path="/TPrescriptionDash/:tsid/:appoint_id/:tpid/:sitting/:treatment"
            element={
              user === null ? (
                <DoctorLogin />
              ) : loading ? (
                <>
                  {" "}
                  <Lottie
                    options={defaultOptions}
                    height={300}
                    width={400}
                    style={{ background: "transparent" }}
                  ></Lottie>
                </>
              ) : (
                //    ) : todayAttendance.length === 0 ? (
                //              <AttendanceLeave />
                <TPrescriptionDash />
              )
            }
          />
          <Route
            path="/ViewTreatPrescription/:tpid/:appoint_id/:sitting/:treatment"
            element={
              user === null ? (
                <DoctorLogin />
              ) : loading ? (
                <>
                  {" "}
                  <Lottie
                    options={defaultOptions}
                    height={300}
                    width={400}
                    style={{ background: "transparent" }}
                  ></Lottie>
                </>
              ) : (
                //    ) : todayAttendance.length === 0 ? (
                //              <AttendanceLeave />
                <ViewTreatPrescription />
              )
            }
          />

          <Route
            path="/ViewTreatPrescriptionlist/:tpid/:appoint_id/:sitting/:treatment"
            element={
              user === null ? (
                <DoctorLogin />
              ) : loading ? (
                <>
                  {" "}
                  <Lottie
                    options={defaultOptions}
                    height={300}
                    width={400}
                    style={{ background: "transparent" }}
                  ></Lottie>
                </>
              ) : (
                //    ) : todayAttendance.length === 0 ? (
                //              <AttendanceLeave />
                <ViewTreatPrescriptionList />
              )
            }
          />

          <Route
            path="/ViewPatientTotalBill/:tpid"
            element={
              user === null ? (
                <DoctorLogin />
              ) : loading ? (
                <>
                  {" "}
                  <Lottie
                    options={defaultOptions}
                    height={300}
                    width={400}
                    style={{ background: "transparent" }}
                  ></Lottie>
                </>
              ) : (
                // ) : todayAttendance.length === 0 ? (
                //   <AttendanceLeave />
                <PatientBillsByTpid />
              )
            }
          />

          <Route
            path="/profileDashboard"
            element={
              user === null ? (
                <DoctorLogin />
              ) : loading ? (
                <>
                  {" "}
                  <Lottie
                    options={defaultOptions}
                    height={300}
                    width={400}
                    style={{ background: "transparent" }}
                  ></Lottie>
                </>
              ) : (
                //    ) : todayAttendance.length === 0 ? (
                //              <AttendanceLeave />
                <ProfileDashboard />
              )
            }
          />
          <Route
            path="/Patient-profile/:uhid"
            element={
              user === null ? (
                <DoctorLogin />
              ) : loading ? (
                <>
                  {" "}
                  <Lottie
                    options={defaultOptions}
                    height={300}
                    width={400}
                    style={{ background: "transparent" }}
                  ></Lottie>
                </>
              ) : (
                //    ) : todayAttendance.length === 0 ? (
                //              <AttendanceLeave />
                <PatientProfile />
              )
            }
          />
          <Route
            path="/all-patient"
            element={
              user === null ? (
                <DoctorLogin />
              ) : loading ? (
                <>
                  {" "}
                  <Lottie
                    options={defaultOptions}
                    height={300}
                    width={400}
                    style={{ background: "transparent" }}
                  ></Lottie>
                </>
              ) : (
                //    ) : todayAttendance.length === 0 ? (
                //              <AttendanceLeave />
                <AllPatient />
              )
            }
          />

          <Route
            path="/attendance-dashboard"
            element={
              user === null ? (
                <DoctorLogin />
              ) : loading ? (
                <>
                  {" "}
                  <Lottie
                    options={defaultOptions}
                    height={300}
                    width={400}
                    style={{ background: "transparent" }}
                  ></Lottie>
                </>
              ) : (
                //    ) : todayAttendance.length === 0 ? (
                //              <AttendanceLeave />
                <AttendanceLeave />
              )
            }
          />

          <Route
            path="/patient-due-payment-print/:tpid"
            element={
              user === null ? (
                <DoctorLogin />
              ) : loading ? (
                <>
                  {" "}
                  <Lottie
                    options={defaultOptions}
                    height={300}
                    width={400}
                    style={{ background: "transparent" }}
                  ></Lottie>
                </>
              ) : (
                //    ) : todayAttendance.length === 0 ? (
                //              <AttendanceLeave />
                <PatintDuePaymentPrint />
              )
            }
          />
          <Route path="/password-reset" element={<PasswordReset />} />
          <Route
            path="/print-oral-testing/:id"
            element={
              user === null ? (
                <DoctorLogin />
              ) : loading ? (
                <>
                  {" "}
                  <Lottie
                    options={defaultOptions}
                    height={300}
                    width={400}
                    style={{ background: "transparent" }}
                  ></Lottie>
                </>
              ) : (
                //    ) : todayAttendance.length === 0 ? (
                //              <AttendanceLeave />
                <Print_Oral_Blood />
              )
            }
          />

          <Route
            path="/prescription-details"
            element={
              user === null ? (
                <DoctorLogin />
              ) : loading ? (
                <>
                  {" "}
                  <Lottie
                    options={defaultOptions}
                    height={300}
                    width={400}
                    style={{ background: "transparent" }}
                  ></Lottie>
                </>
              ) : (
                //    ) : todayAttendance.length === 0 ? (
                //              <AttendanceLeave />
                <PrescriptionDetails />
              )
            }
          />

          <Route
            path="/prescription-generate/:tpid/:appoint_id"
            element={
              user === null ? (
                <DoctorLogin />
              ) : loading ? (
                <>
                  {" "}
                  <Lottie
                    options={defaultOptions}
                    height={300}
                    width={400}
                    style={{ background: "transparent" }}
                  ></Lottie>
                </>
              ) : (
                //    ) : todayAttendance.length === 0 ? (
                //              <AttendanceLeave />
                <PrescriptionQuick />
              )
            }
          />

          <Route
            path="/view-quick-prescription/:uhid/:appointId"
            element={
              user === null ? (
                <DoctorLogin />
              ) : loading ? (
                <>
                  {" "}
                  <Lottie
                    options={defaultOptions}
                    height={300}
                    width={400}
                    style={{ background: "transparent" }}
                  ></Lottie>
                </>
              ) : (
                //    ) : todayAttendance.length === 0 ? (
                //              <AttendanceLeave />
                <ViewQuickPrescription />
              )
            }
          />

          <Route
            path="/ViewPatientSittingBill/:tpid/:sitting/:treatment/:appoint_id"
            element={
              user === null ? (
                <DoctorLogin />
              ) : loading ? (
                <>
                  {" "}
                  <Lottie
                    options={defaultOptions}
                    height={300}
                    width={400}
                    style={{ background: "transparent" }}
                  ></Lottie>
                </>
              ) : (
                // ) : todayAttendance.length === 0 ? (
                //   <AttendanceLeave />
                <SittingBill />
              )
            }
          />

          {/* ---Quick Prescription */}
          <Route
            path="/Quick-Prescription/:appoint_id/:patient_uhid"
            element={
              user === null ? (
                <DoctorLogin />
              ) : loading ? (
                <>
                  {" "}
                  <Lottie
                    options={defaultOptions}
                    height={300}
                    width={400}
                    style={{ background: "transparent" }}
                  ></Lottie>
                </>
              ) : (
                //    ) : todayAttendance.length === 0 ? (
                //              <AttendanceLeave />
                <QPrescriptionForm />
              )
            }
          />
          {/* ---Quick Prescription */}

          {/* ****************** Doctor Routes End Here ******************* */}

          {/* ---Receptionist */}

          {/* ****************** Receptionist Routes End Here ******************* */}

          {/* receptionist routes start */}
          <Route path="/receptionist_registration" element={<Registration />} />
          <Route
            path="/receptionist-dashboard"
            element={
              user?.currentUser === null ? (
                <UniversalLogin />
              ) : (
                <Receptionistdash />
              )
            }
          />
          <Route
            path="/all_patient"
            element={
              user?.currentUser === null ? <UniversalLogin /> : <AllPatient />
            }
          />
          <Route
            path="/inquiry"
            element={
              user?.currentUser === null ? <UniversalLogin /> : <Inquiry />
            }
          />
          <Route
            path="/patient_profile/:uhid"
            element={
              user?.currentUser === null ? (
                <UniversalLogin />
              ) : (
                <PatientProfile />
              )
            }
          />
          <Route
            path="/print_Opd_Reciept/:appointmentId"
            element={
              user?.currentUser === null ? <UniversalLogin /> : <PrintOpdBill />
            }
          />
          <Route
            path="/print_security_amount/:SId"
            element={
              user?.currentUser === null ? (
                <UniversalLogin />
              ) : (
                <PrintSecurityAmt />
              )
            }
          />
          <Route
            path="/appointment"
            element={
              user?.currentUser === null ? (
                <UniversalLogin />
              ) : (
                <AppointmentSection />
              )
            }
          />
          <Route
            path="/edit_appointment"
            element={
              user?.currentUser === null ? <UniversalLogin /> : <EditPopup />
            }
          />
          <Route
            path="/modify_appointment"
            element={
              user?.currentUser === null ? <UniversalLogin /> : <ModifyPopup />
            }
          />
          <Route
            path="/delete_appointment"
            element={
              user?.currentUser === null ? <UniversalLogin /> : <DeletePopup />
            }
          />
          <Route
            path="/bill_section"
            element={
              user?.currentUser === null ? <UniversalLogin /> : <BillSection />
            }
          />
          <Route
            path="/DoctorSection"
            element={
              user?.currentUser === null ? (
                <UniversalLogin />
              ) : (
                <DoctorSection />
              )
            }
          />
          <Route
            path="/doctor_profile"
            element={
              user?.currentUser === null ? (
                <UniversalLogin />
              ) : (
                <Doctorprofile />
              )
            }
          />
          <Route
            path="/video"
            element={
              user?.currentUser === null ? <UniversalLogin /> : <VideoSection />
            }
          />
          <Route
            path="/lab"
            element={
              user?.currentUser === null ? <UniversalLogin /> : <LabSection />
            }
          />
          <Route
            path="/report"
            element={
              user?.currentUser === null ? (
                <UniversalLogin />
              ) : (
                <ReportSection />
              )
            }
          />
          <Route
            path="/new_patient"
            element={
              user?.currentUser === null ? <UniversalLogin /> : <NewPatient />
            }
          />
          <Route
            path="/opd_collection"
            element={
              user?.currentUser === null ? (
                <UniversalLogin />
              ) : (
                <OpdCollection />
              )
            }
          />
          <Route
            path="/receptionist_profile"
            element={
              user?.currentUser === null ? <UniversalLogin /> : <Profile />
            }
          />
          <Route
            path="/security_amount"
            element={
              user?.currentUser === null ? (
                <UniversalLogin />
              ) : (
                <SecurityAmount />
              )
            }
          />
          {/* <Route
        path="/due_amount"
        element={
          user?.currentUser === null ? <UniversalLogin /> : <PatientsDue />
        }
      /> */}
          <Route
            path="/invoices"
            element={
              user?.currentUser === null ? (
                <UniversalLogin />
              ) : (
                <FinalInvoices />
              )
            }
          />
          {/* <Route
        path="/sitting-due-amount"
        element={
          user?.currentUser === null ? (
            <UniversalLogin />
          ) : (
            <SittingBillDetails />
          )
        }
      /> */}
          {/* <Route
        path="/sitting-paid-amount"
        element={
          user?.currentUser === null ? (
            <UniversalLogin />
          ) : (
            <SittingPaidBillDetails />
          )
        }
      /> */}
          {/* <Route
        path="/paid_amount"
        element={
          user?.currentUser === null ? <UniversalLogin /> : <PatientsPaid />
        }
      /> */}
          <Route
            path="/all_credit_invoice"
            element={
              user?.currentUser === null ? (
                <UniversalLogin />
              ) : (
                <AllCreditInvoice />
              )
            }
          />
          <Route
            path="/PatintDuePaymentPrint/:bid/:tpid/:uhid"
            element={
              user?.currentUser === null ? (
                <UniversalLogin />
              ) : (
                <PatintDuePaymentPrint />
              )
            }
          />
          <Route
            path="/SittingBillPayment/:sbid/:tpid/:uhid"
            element={
              user?.currentUser === null ? (
                <UniversalLogin />
              ) : (
                <SittingBillPayment />
              )
            }
          />
          <Route
            path="/patient-bill/:billid/:tpid"
            element={
              user?.currentUser === null ? (
                <UniversalLogin />
              ) : (
                <PatientBillsByTpid />
              )
            }
          />
          <Route
            path="/credit-patient-bill/:billid/:tpid"
            element={
              user?.currentUser === null ? (
                <UniversalLogin />
              ) : (
                <CreditPatientBillsByTpid />
              )
            }
          />
          <Route
            path="/branch-details"
            element={
              user?.currentUser === null ? <UniversalLogin /> : <BranchInfo />
            }
          />

          <Route
            path="/ViewPatientSittingBill/:tpid/:sbid/:treatment"
            element={
              user?.currentUser === null ? <UniversalLogin /> : <SittingBill />
            }
          />
          <Route
            path="/ViewCreditPatientSittingBill/:tpid/:sbid"
            element={
              user?.currentUser === null ? (
                <UniversalLogin />
              ) : (
                <CreditSittingBill />
              )
            }
          />
          <Route
            path="/ViewPatientSittingBill/:tpid/:sbid"
            element={
              user?.currentUser === null ? (
                <UniversalLogin />
              ) : (
                <ReceptionSittingBill />
              )
            }
          />
          {/* <Route
          path="/attendanceLeave"
          element={
            user?.currentUser === null ? (
              <UniversalLogin />
            ) : (
              <AttendanceLeave />
            )
          }
        /> */}

          <Route path="/password-reset" element={<PasswordReset />} />
          <Route path="*" element={<F404page />} />

          {/* ************** Super Admin Routes Start Here ******************* */}

          <Route
            path="/clinic-setting"
            element={
              user?.currentUser === null ? (
                <UniversalLogin />
              ) : (
                <ClinicSetting />
              )
            }
          />

          <Route
            path="/calender-setting"
            element={
              user?.id === null ? <UniversalLogin /> : <CalenderSetting />
            }
          />

          <Route
            path="/manage-staff"
            element={
              user?.currentUser === null ? <UniversalLogin /> : <ManageStaff />
            }
          />
          <Route
            path="/clinic-config-setting"
            element={
              user?.currentUser === null ? (
                <UniversalLogin />
              ) : (
                <ClinicConfigSetting />
              )
            }
          />
          <Route
            path="/treatment-setting"
            element={
              user?.currentUser === null ? (
                <UniversalLogin />
              ) : (
                <TreatmentSetting />
              )
            }
          />
          {/* super admin  */}
          <Route
            path="/employee-profile/:eid"
            element={
              user?.currentUser === null ? <UniversalLogin /> : <EmployeeProfile />
            }
          />
           <Route
          path="/superadmin-branch"
          element={user?.currentUser === null ? <UniversalLogin /> : <Branches />}
        />
        </Routes>
        {/* <Footer /> */}
      </Styling>
    </>
  );
}

export default App;
const Styling = styled.div`
  padding-bottom: 100px;
`;
