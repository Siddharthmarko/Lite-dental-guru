import { Route, Routes, useNavigate } from "react-router-dom";
import PatientProfile from "./pages/DoctorPageDLT/PatientProfileDLT";
import ExaminationDashBoard from "./components/Doctor/Examination/ExaminationDashBoard";
import ExaminationDashBoardPatient from "./components/Doctor/Examination/ExaminationDashBoardPatient";
import ExaminationDashBoardPediatric from "./components/Doctor/Examination/ExaminationDashBoardPediatric";
import TreatmentDashBoard from "./components/Doctor/Treatment/TreatmentDashBoard";
import TPrescription from "./components/Doctor/PrescriptionDLT/TreatmentPrescription/TPrescription";
import DoctorLogin from "./components/Doctor/Login/DoctorLogin";
import NewTreatment from "./components/Doctor/Treatment/NewTreatment";
import TreatmentForm from "./components/Doctor/Treatment/TreatmentForm";
import TreatmentDashTwo from "./components/Doctor/Treatment/TreatmentDashTwo";
import NewTreatPrescription from "./components/Doctor/PrescriptionDLT/TreatmentPrescription/NewTreatPrescription";
import ViewTreatPrescription from "./components/Doctor/PrescriptionDLT/TreatmentPrescription/ViewTreatPrescription";
import TreatSuggestDashs from "./components/Doctor/Treatment Suggestion/TreatSuggestDashs";
import CreatePrescrip from "./components/Doctor/PrescriptionDLT/CreatePrescrip";
import { useDispatch, useSelector } from "react-redux";
import PatientBillsByTpid from "./pages/PatientBills/PatientBillsByTpid";
import PatintDuePaymentPrint from "./pages/PatientBills/PatintDuePaymentPrint";
import PasswordReset from "./pages/PasswordReset";
import ScrollToTop from "./components/ScrollToTop";
import { useEffect, useState } from "react";
import axios from "axios";
import { clearUser, toggleTableRefresh } from "./redux/user/userSlice";
import animationData from "./animation/animation-four.json";
import Lottie from "lottie-react";
import ViewTreatPrescriptionList from "./components/Doctor/PrescriptionDLT/TreatmentPrescription/ViewTreatPrescriptionList";
import PrescriptionQuick from "./pages/DoctorPageDLT/PrescriptionQuick";
import SittingBill from "./components/Doctor/Treatment/SittingBill";
import QPrescriptionForm from "./components/Doctor/PrescriptionDLT/Quick Prescription/QPrescriptionForm";
import ViewQuickPrescription from "./pages/DoctorPageDLT/ViewQuickPrescription";
import Receptioinstdash from "./components/receptionist/pages/Receptioinstdash";
import AllPatient from "./components/receptionist/pages/AllPatient";


/* ---Receptionist */

import EditPopup from "./components/receptionist/components/receptionist/Appointment/EditPopup";
import ModifyPopup from "./components/receptionist/components/receptionist/Appointment/ModifyPopup";
import DeletePopup from "./components/receptionist/components/receptionist/Appointment/DeletePopup";
import PrintOpdBill from "./components/receptionist/components/receptionist/ReceptioinstDashboard/PrintOpdBill";
import Receptionistdash from "./components/receptionist/pages/Receptioinstdash";
import AppointmentSection from "./components/receptionist/pages/AppointmentSection";
import NewPatient from "./components/receptionist/pages/NewPatient";
import Inquiry from "./components/receptionist/pages/Inquiry";
import OpdCollection from "./components/receptionist/pages/OpdColletion";
import Profile from "./components/receptionist/pages/Profile";
import BranchInfo from "./components/receptionist/pages/BranchInfo";
import PatientsPaid from "./components/receptionist/pages/PatientsPaid";
import F404page from "./components/receptionist/pages/F404page";
import SittingBillPayment from "./components/receptionist/pages/SittingBillPayment";
import SittingPaidBillDetails from "./components/receptionist/pages/SittingPaidBillDetails";
import AllCreditInvoice from "./components/receptionist/pages/AllCreditInvoice";
import FinalInvoices from "./components/receptionist/pages/FinalInvoices";
import CreditPatientBillsByTpid from "./components/receptionist/pages/CreditPatientBillsByTpid";
import CreditSittingBill from "./components/receptionist/pages/CreditSittingBill";
import ReceptionSittingBill from "./components/receptionist/pages/ReceptionSittingBill";

// ************** Super Admin Routes Start Here *******************

import ClinicSetting from "./components/superAdmin/ClinicSetting";
import ClinicConfigSetting from "./components/superAdmin/ClinicConfigSetting";
import TreatmentSetting from "./components/superAdmin/TreatmentSetting";
import CalenderSetting from "./components/superAdmin/CalenderSetting";
import Branches from "./components/superAdmin/Branches";
import styled from "styled-components";

function App() {
  const user = useSelector((state) => state?.user?.currentUser);
  const [loading, setLoading] = useState(false);

  const defaultOptions = {
    loop: true,
    autoplay: true,
    animationData: animationData,
    rendererSettings: {
      preserveAspectRatio: "xMidYMid slice",
    },
  };

  return (
    <>
      <Styling>
        <ScrollToTop />

        <Routes>
          {/* ************** Doctor Routes Start Here ******************* */}

          <Route path="/" element={user === null ? <DoctorLogin /> : <Receptioinstdash />} />
          <Route
            path="/dashboard"
            element={user === null ? <DoctorLogin /> : <Receptioinstdash />}
          />

          <Route
            path="/AllPatient"
            element={user === null ? <DoctorLogin /> : <AllPatient />}
          />
          <Route
            path="/examination-Dashboard/:id/:uhid"
            element={
              user === null ? (
                <DoctorLogin />
              ) : loading ? (
                <>
                  <Lottie
                    options={defaultOptions}
                    height={300}
                    width={400}
                    style={{ background: "transparent" }}
                  ></Lottie>
                </>
              ) : (
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
                  <Lottie
                    options={defaultOptions}
                    height={300}
                    width={400}
                    style={{ background: "transparent" }}
                  ></Lottie>
                </>
              ) : (
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
                  <Lottie
                    options={defaultOptions}
                    height={300}
                    width={400}
                    style={{ background: "transparent" }}
                  ></Lottie>
                </>
              ) : (
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
                  <Lottie
                    options={defaultOptions}
                    height={300}
                    width={400}
                    style={{ background: "transparent" }}
                  ></Lottie>
                </>
              ) : (
                <TreatSuggestDashs />
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
                  <Lottie
                    options={defaultOptions}
                    height={300}
                    width={400}
                    style={{ background: "transparent" }}
                  ></Lottie>
                </>
              ) : (
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
                  <Lottie
                    options={defaultOptions}
                    height={300}
                    width={400}
                    style={{ background: "transparent" }}
                  ></Lottie>
                </>
              ) : (
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
                  <Lottie
                    options={defaultOptions}
                    height={300}
                    width={400}
                    style={{ background: "transparent" }}
                  ></Lottie>
                </>
              ) : (
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
                  <Lottie
                    options={defaultOptions}
                    height={300}
                    width={400}
                    style={{ background: "transparent" }}
                  ></Lottie>
                </>
              ) : (
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
                  <Lottie
                    options={defaultOptions}
                    height={300}
                    width={400}
                    style={{ background: "transparent" }}
                  ></Lottie>
                </>
              ) : (
                <NewTreatPrescription />
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
                  <Lottie
                    options={defaultOptions}
                    height={300}
                    width={400}
                    style={{ background: "transparent" }}
                  ></Lottie>
                </>
              ) : (
                <TPrescription />
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
                  <Lottie
                    options={defaultOptions}
                    height={300}
                    width={400}
                    style={{ background: "transparent" }}
                  ></Lottie>
                </>
              ) : (
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
                  <Lottie
                    options={defaultOptions}
                    height={300}
                    width={400}
                    style={{ background: "transparent" }}
                  ></Lottie>
                </>
              ) : (
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
                  <Lottie
                    options={defaultOptions}
                    height={300}
                    width={400}
                    style={{ background: "transparent" }}
                  ></Lottie>
                </>
              ) : (
                <PatientBillsByTpid />
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
                  <Lottie
                    options={defaultOptions}
                    height={300}
                    width={400}
                    style={{ background: "transparent" }}
                  ></Lottie>
                </>
              ) : (
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
                  <Lottie
                    options={defaultOptions}
                    height={300}
                    width={400}
                    style={{ background: "transparent" }}
                  ></Lottie>
                </>
              ) : (
                <AllPatient />
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
                  <Lottie
                    options={defaultOptions}
                    height={300}
                    width={400}
                    style={{ background: "transparent" }}
                  ></Lottie>
                </>
              ) : (
                <PatintDuePaymentPrint />
              )
            }
          />
          <Route path="/password-reset" element={<PasswordReset />} />
          <Route
            path="/view-quick-prescription/:uhid/:appointId"
            element={
              user === null ? (
                <DoctorLogin />
              ) : loading ? (
                <>
                  <Lottie
                    options={defaultOptions}
                    height={300}
                    width={400}
                    style={{ background: "transparent" }}
                  ></Lottie>
                </>
              ) : (
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
                  <Lottie
                    options={defaultOptions}
                    height={300}
                    width={400}
                    style={{ background: "transparent" }}
                  ></Lottie>
                </>
              ) : (
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
                  <Lottie
                    options={defaultOptions}
                    height={300}
                    width={400}
                    style={{ background: "transparent" }}
                  ></Lottie>
                </>
              ) : (
                <QPrescriptionForm />
              )
            }
          />
          {/* ---Quick Prescription */}

          {/* ****************** Doctor Routes End Here ******************* */}

          {/* ---Receptionist */}

          {/* ****************** Receptionist Routes End Here ******************* */}

          <Route
            path="/receptionist-dashboard"
            element={user === null ? <DoctorLogin /> : <Receptionistdash />}
          />
          <Route
            path="/all_patient"
            element={user === null ? <DoctorLogin /> : <AllPatient />}
          />
          <Route
            path="/inquiry"
            element={user === null ? <DoctorLogin /> : <Inquiry />}
          />
          <Route
            path="/patient_profile/:uhid"
            element={user === null ? <DoctorLogin /> : <PatientProfile />}
          />
          <Route
            path="/print_Opd_Reciept/:appointmentId"
            element={user === null ? <DoctorLogin /> : <PrintOpdBill />}
          />
          <Route
            path="/appointment"
            element={user === null ? <DoctorLogin /> : <AppointmentSection />}
          />
          <Route
            path="/edit_appointment"
            element={user === null ? <DoctorLogin /> : <EditPopup />}
          />
          <Route
            path="/modify_appointment"
            element={user === null ? <DoctorLogin /> : <ModifyPopup />}
          />
          <Route
            path="/delete_appointment"
            element={user === null ? <DoctorLogin /> : <DeletePopup />}
          />
      
          <Route
            path="/new_patient"
            element={user === null ? <DoctorLogin /> : <NewPatient />}
          />
          <Route
            path="/opd_collection"
            element={user === null ? <DoctorLogin /> : <OpdCollection />}
          />
          <Route
            path="/receptionist_profile"
            element={user === null ? <DoctorLogin /> : <Profile />}
          />
          {/* <Route
        path="/due_amount"
        element={ // COULD BE EXIST
          user === null ? <DoctorLogin /> : <PatientsDue />
        }
      /> */}
          <Route
            path="/invoices"
            element={user === null ? <DoctorLogin /> : <FinalInvoices />}
          />
          <Route
            path="/all_credit_invoice"
            element={user === null ? <DoctorLogin /> : <AllCreditInvoice />}
          />
          <Route
            path="/PatintDuePaymentPrint/:bid/:tpid/:uhid"
            element={
              user === null ? <DoctorLogin /> : <PatintDuePaymentPrint />
            }
          />
          <Route
            path="/SittingBillPayment/:sbid/:tpid/:uhid"
            element={user === null ? <DoctorLogin /> : <SittingBillPayment />}
          />
          <Route
            path="/patient-bill/:billid/:tpid"
            element={user === null ? <DoctorLogin /> : <PatientBillsByTpid />}
          />
          <Route
            path="/credit-patient-bill/:billid/:tpid"
            element={
              user === null ? <DoctorLogin /> : <CreditPatientBillsByTpid />
            }
          />
          <Route
            path="/branch-details"
            element={user === null ? <DoctorLogin /> : <BranchInfo />}
          />

          <Route
            path="/ViewPatientSittingBill/:tpid/:sbid/:treatment"
            element={user === null ? <DoctorLogin /> : <SittingBill />}
          />
          <Route
            path="/ViewCreditPatientSittingBill/:tpid/:sbid"
            element={user === null ? <DoctorLogin /> : <CreditSittingBill />}
          />
          <Route
            path="/ViewPatientSittingBill/:tpid/:sbid"
            element={user === null ? <DoctorLogin /> : <ReceptionSittingBill />}
          />
          
          <Route path="/password-reset" element={<PasswordReset />} />
          <Route path="*" element={<F404page />} />

          {/* ************** Super Admin Routes Start Here ******************* */}

          <Route
            path="/clinic-setting"
            element={user === null ? <DoctorLogin /> : <ClinicSetting />}
          />

          <Route
            path="/calender-setting"
            element={user?.id === null ? <DoctorLogin /> : <CalenderSetting />}
          />

          <Route
            path="/clinic-config-setting"
            element={user === null ? <DoctorLogin /> : <ClinicConfigSetting />}
          />
          <Route
            path="/treatment-setting"
            element={user === null ? <DoctorLogin /> : <TreatmentSetting />}
          />
          <Route
            path="/branch"
            element={user === null ? <DoctorLogin /> : <Branches />}
          />
        </Routes>
        {/* <Footer /> */}
      </Styling>
    </>
  );
}

export default App;
const Styling = styled.div`
  // padding-bottom: 100px;
`;
