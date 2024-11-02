import axios from "axios";
import cogoToast from "cogo-toast";
import React, { useEffect, useRef, useState } from "react";
import { IoMdArrowRoundBack } from "react-icons/io";
import { useSelector } from "react-redux";
import { useNavigate, useParams } from "react-router-dom";
import styled from "styled-components";
import html2canvas from "html2canvas";
import jsPDF from "jspdf";
import { SiGmail } from "react-icons/si";
import { IoLogoWhatsapp } from "react-icons/io";

const PrescriptionQuick = () => {
  const { tpid, appoint_id } = useParams();
  const contentRef = useRef();
  // console.log(useParams());
  const user = useSelector((state) => state.user);
  const token = user.currentUser?.token;
  console.log(user);
  const branch = user.currentUser?.branch_name;
  console.log(branch);
  const branchData = useSelector((state) => state.branch.currentBranch);
  console.log(branchData);
  const [getExaminData, setGetExaminData] = useState([]);
  const [getTreatData, setGetTreatData] = useState([]);
  const [getTreatMedicine, setGetTreatMedicine] = useState([]);
  const [getTreatSug, setGetTreatSug] = useState([]);
  const [getBranch, setGetBranch] = useState([]);

  const [getLabData, setGetLabData] = useState([]);

  const [getPatientData, setGetPatientData] = useState([]);
  const navigate = useNavigate();

  const getBranchDetails = async () => {
    try {
      const { data } = await axios.get(
        `https://huzaifdentalclinic.dentalguru.software/api/doctor/getBranchDetails/${branch}`,
        {
          headers: {
            "Content-Type": "application/json",
            Authorization: `Bearer ${token}`,
          },
        }
      );
      console.log(data);
      setGetBranch(data);
    } catch (error) {
      console.log(error);
    }
  };

  console.log(getBranch);
  console.log(getPatientData);

  // Get Patient Details START
  const getPatientDetail = async () => {
    try {
      const res = await axios.get(
        `https://huzaifdentalclinic.dentalguru.software/api/doctor/getAppointmentsWithPatientDetailsById/${tpid}`,
        {
          headers: {
            "Content-Type": "application/json",
            Authorization: `Bearer ${token}`,
          },
        }
      );
      setGetPatientData(res.data.result);
    } catch (error) {
      console.log(error);
    }
  };

  const getLabAllData = async () => {
    try {
      const res = await axios.get(
        `https://huzaifdentalclinic.dentalguru.software/api/doctor/lab-details/${tpid}`,
        {
          headers: {
            "Content-Type": "application/json",
            Authorization: `Bearer ${token}`,
          },
        }
      );
      setGetLabData(res.data.lab_details);
      console.log(res.data.lab_details);
    } catch (error) {
      console.log(error);
    }
  };

  const getTreatDetails = async () => {
    try {
      const { data } = await axios.get(
        `https://huzaifdentalclinic.dentalguru.software/api/doctor/getTreatmentDataList/${tpid}/${branch}`
      );
      setGetTreatData(data);
    } catch (error) {
      console.log(error);
    }
  };

  useEffect(() => {
    getPatientDetail();
    getBranchDetails();
    getLabAllData();
    getTreatDetails();
  }, []);

  console.log(getTreatData);
  // Get Patient Details END

  // Get Patient Examintion Details START
  const getExaminDetail = async () => {
    try {
      const res = await axios.get(
        `https://huzaifdentalclinic.dentalguru.software/api/doctor/getDentalDataByTpid/${tpid}/${branch}`,
        {
          headers: {
            "Content-Type": "application/json",
            Authorization: `Bearer ${token}`,
          },
        }
      );
      setGetExaminData(res.data);
      console.log(res.data);
    } catch (error) {
      console.log(error);
    }
  };

  console.log(getExaminData);

  useEffect(() => {
    getExaminDetail();
  }, []);

  const goBack = () => {
    window.history.go(-1);
  };

  const handleButton = async () => {
    try {
      window.print();
    } catch (error) {
      console.log("Error updating sitting count", error);
    }
  };

  const getTreatPrescriptionByAppointId = async () => {
    try {
      const { data } = await axios.get(
        `https://huzaifdentalclinic.dentalguru.software/api/doctor/getTreatPrescriptionByAppointIdList/${tpid}`,
        {
          headers: {
            "Content-Type": "application/json",
            Authorization: `Bearer ${token}`,
          },
        }
      );
      setGetTreatMedicine(data);
      console.log(data);
      // setGetSum(data);
    } catch (error) {
      console.log(error);
    }
  };

  console.log(getTreatMedicine);

  useEffect(() => {
    getTreatPrescriptionByAppointId();
  }, []);

  const handleTreatNavigattion = () => {
    navigate(`/TreatmentDashBoard/${tpid}/${appoint_id}`);
  };

  const handleDownloadPdf = async () => {
    const element = contentRef.current;
    const canvas = await html2canvas(element);
    const imgData = canvas.toDataURL("image/png");
    const pdf = new jsPDF();
    const imgWidth = 210; // A4 width in mm
    const imgHeight = (canvas.height * imgWidth) / canvas.width;

    pdf.addImage(imgData, "PNG", 0, 0, imgWidth, imgHeight, undefined, "FAST");
    pdf.save("prescription.pdf");
  };

  const sendPrescriptionMail = async () => {
    try {
      const element = contentRef.current;
  
      if (!element) {
        console.error("Content reference is not defined.");
        cogoToast.error("Content not found.");
        return;
      }
  
      const canvas = await html2canvas(element);
      const imgData = canvas.toDataURL("image/png");
      const pdf = new jsPDF();
      const imgWidth = 210; // A4 width in mm
      const imgHeight = (canvas.height * imgWidth) / canvas.width;
  
      pdf.addImage(imgData, "PNG", 0, 0, imgWidth, imgHeight, undefined, "FAST");
      const pdfData = pdf.output("blob");
  
      const formData = new FormData();
      
      if (getPatientData.length > 0) {
        const patient = getPatientData[0];
        formData.append("email", patient.emailid);
        formData.append("patient_name", patient.patient_name);
        formData.append("subject", `${patient.patient_name}, your prescription file`);
        formData.append("textMatter", `Dear ${patient.patient_name}, Please find the attached Prescription file.`);
        formData.append("file", pdfData, "prescription.pdf");
  
        // Log the form data for debugging
        for (let [key, value] of formData.entries()) {
          console.log(`${key}: ${value instanceof Blob ? 'Blob' : value}`);
        }
  
        const response = await axios.post(
          "https://huzaifdentalclinic.dentalguru.software/api/doctor/prescriptionOnMail",
          formData,
          {
            headers: {
              "Content-Type": "multipart/form-data", // Optional
              Authorization: `Bearer ${token}`, // Ensure token is defined
            },
            timeout: 15000, // Increased timeout for API call
          }
        );
  
        if (response.status === 200) {
          cogoToast.success("Prescription sent successfully");
          console.log("PDF sent successfully:", response.data);
        } else {
          console.error("Failed to send PDF:", response);
          cogoToast.error("Failed to send prescription, please try again.");
        }
      } else {
        console.error("No patient data available.");
        cogoToast.error("Patient data is missing.");
      }
    } catch (error) {
      console.error("Error sending PDF:", error);
      cogoToast.error("An error occurred while sending the prescription.");
    }
  };
  

  const sendPrescriptionWhatsapp = async () => {
    try {
      const element = contentRef.current;
      const canvas = await html2canvas(element);
      const imgData = canvas.toDataURL("image/png");
      const pdf = new jsPDF();
      const imgWidth = 210; // A4 width in mm
      const imgHeight = (canvas.height * imgWidth) / canvas.width;

      pdf.addImage(
        imgData,
        "PNG",
        0,
        0,
        imgWidth,
        imgHeight,
        undefined,
        "FAST"
      );
      const pdfData = pdf.output("blob");
      console.log(pdfData);

      const file = new File([pdfData], "prescription.pdf", {
        type: "application/pdf",
      });

      const formData = new FormData();
      formData.append("number", getPatientData[0]?.mobileno);
      formData.append("type", "media");
      formData.append("message", `test message`);

      formData.append("mediaFile", file);
      formData.append("filename", "stranger things");
      formData.append("instance_id", "66A738A57110E");
      formData.append("access_token", "668f7d2850e22");
      for (let [key, value] of formData.entries()) {
        console.log(key, value);
      }
      const res = await axios.post(
        "https://huzaifdentalclinic.dentalguru.software/api/doctor/sendWhatsapp",
        formData,
        {
          headers: {
            "Content-Type": "multipart/form-data",
          },
        }
      );
      cogoToast.success("Prescription sent successfully");
      console.log("PDF sent successfully");
    } catch (error) {
      console.error("Error sending PDF:", error);
    }
  };

  return (
    <>
      <Wrapper>
        <div className="container-fluid">
          <div className="d-flex justify-content-between align-items-center">
            <button
              className="btn btn-success no-print text-white shadow"
              style={{
                backgroundColor: "#0dcaf0",
                border: "#0dcaf0",
              }}
              onClick={goBack}
            >
              <IoMdArrowRoundBack /> Back
            </button>
            <button
              className="btn btn-success no-print mx-3 mb-3 mt-2 no-print text-white shadow"
              style={{
                backgroundColor: "#0dcaf0",
                border: "#0dcaf0",
              }}
              onClick={handleButton}
            >
              Print
            </button>
          </div>{" "}
        </div>
        <div ref={contentRef}>
          <div className="row">
            <div className="col-xxl-12 col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
              <div className="clinic-logo">
                <img
                  src={getBranch[0]?.head_img}
                  alt="header"
                  className="img-fluid"
                />
              </div>
            </div>
          </div>
          <hr />

          <div className="container-fluid">
            <h2 className="text-center">Prescription</h2>
            <div className="row">
              <div className="col-xxl-4 col-xl-4 col-lg-4 col-md-4 col-sm-4 col-4">
                <div className="header-left">
                  <h3 className="text-start">
                    Dr. {user.currentUser?.employee_name}
                  </h3>
                  <h6
                    className="fw-bold text-capitalize text-start "
                    style={{ color: "#00b894" }}
                  >
                    {user.currentUser?.doctor_expertise}
                  </h6>

                  <h6 className="fw-bold text-capitalize text-start ">
                    {user.currentUser?.doctor_education_details}
                  </h6>

                  {/* <h6 className="fw-bold text-capitalize text-start">
                  hospital_name
                </h6>
                <h6 className="fw-bold text-capitalize text-start">
                  {getBranch[0]?.hospital_name}
                </h6> */}
                  <h6 className="fw-bold text-capitalize text-start">
                    Date : {getExaminData[0]?.date?.split(" ")[0]}
                  </h6>
                </div>
              </div>
            </div>
          </div>
          <div className="container-fluid dummy-cont h-100">
            <div className="row">
              <div className="col-lg-12 col-md-12 col-sm-12">
                {/* <h6 className="fw-bold text-capitalize text-end">
                Sitting Number : sitting
              </h6> */}
                <table className="table table-bordered border">
                  <tbody>
                    <>
                      <tr>
                        <th scope="row">Treatment Package ID</th>
                        <td>{tpid}</td>
                        <th scope="row">Blood Group</th>
                        <td>{getPatientData[0]?.bloodgroup}</td>
                      </tr>
                      <tr>
                        <th scope="row">Patient Name</th>
                        <td>{getPatientData[0]?.patient_name}</td>
                        <th scope="row">Disease</th>
                        <td>{getPatientData[0]?.disease}</td>
                      </tr>
                      <tr>
                        <th scope="row">Patient Mobile No.</th>
                        <td>{getPatientData[0]?.mobileno}</td>
                        <th scope="row">Allergy</th>
                        <td>{getPatientData[0]?.allergy}</td>
                      </tr>
                    </>
                  </tbody>
                </table>
                <div className="treatment">
                  {/* <p className=" fw-bold">Treatment</p> */}
                  {/* <div>
                  <p className=" px-3">treatment_name</p>
                </div> */}
                </div>
                <div className="diagnosis">
                  <p className="text-start  fw-bold ">Diagnosis</p>
                  <table className="table table-bordered border">
                    <thead>
                      <tr>
                        <th>Date</th>
                        <th>Seleted Teeth</th>
                        <th>Disease</th>
                        <th>Chief Complain</th>
                        <th>On Exmination</th>
                        <th>Advice</th>
                      </tr>
                    </thead>
                    {getExaminData?.map((item, index) => (
                      <tbody>
                        <>
                          <tr>
                            <td>{item.date?.split(" ")[0]}</td>
                            <td>{item.selected_teeth}</td>
                            <td>{item.disease}</td>
                            <td>{item.chief_complain}</td>
                            <td>{item.on_examination}</td>
                            <td>{item.advice}</td>
                          </tr>
                        </>
                      </tbody>
                    ))}
                  </table>
                </div>
                {getLabData.length > 0 ? (
                  <>
                    <div className="diagnosis">
                      <p className="text-start  fw-bold">Lab Test</p>
                      <table className="table table-bordered border">
                        <thead>
                          <tr>
                            <th>Test Name</th>
                            <th>Test</th>
                          </tr>
                        </thead>
                        {getLabData?.map((item, index) => (
                          <tbody>
                            <>
                              <tr>
                                <td>{item.lab_name}</td>
                                <td>{item.test}</td>
                              </tr>
                            </>
                          </tbody>
                        ))}
                      </table>
                    </div>
                  </>
                ) : null}

                <div className="Treatment">
                  <p className="text-start  fw-bold">Treatment Procedure</p>
                  <table className="table table-bordered border">
                    <thead>
                      <tr>
                        <th>Date</th>
                        <th>Treatment</th>
                        <th>Teeth</th>
                        <th>Qty</th>
                        <th>Cost</th>
                        <th>Cst * Qty</th>

                        <th>Note</th>
                      </tr>
                    </thead>
                    {getTreatData?.map((item, index) => (
                      <tbody>
                        <>
                          <tr>
                            <td>{item.date?.split(" ")[0]}</td>
                            <td>{item.treatment_name}</td>
                            <td>{item.selected_teeth}</td>
                            <td>{item?.selected_teeth?.split(", ").length}</td>
                            <td>{item.totalCost}</td>
                            <td>
                              {item.totalCost *
                                item?.selected_teeth?.split(", ").length}
                            </td>
                            <td>{item.note}</td>
                          </tr>
                        </>
                      </tbody>
                    ))}
                  </table>
                </div>
                <div className="Medicine">
                  <p className="text-start  fw-bold">Medicine Details</p>
                </div>

                <div className="table-responsive">
                  <table className="table table-bordered table-striped border">
                    <thead>
                      <tr>
                        <th>Date</th>
                        <th>Medicine Name</th>
                        <th>Dosage</th>
                        <th>Frequency</th>
                        <th>Duration</th>
                        <th>Note</th>
                      </tr>
                    </thead>
                    <tbody>
                      {getTreatMedicine?.map((item, index) => (
                        <>
                          <tr key={index + 1}>
                            <td>{item.date?.split(" ")[0]}</td>
                            <td>{item.medicine_name}</td>
                            <td>{item.dosage}</td>
                            <td>{item.frequency}</td>
                            <td>{item.duration}</td>
                            <td>{item.note}</td>
                          </tr>
                        </>
                      ))}
                    </tbody>
                  </table>
                </div>

                <div className="sign-seal">
                  <div>
                    <h4>Doctor's signature</h4>
                  </div>
                  <div>
                    <h4>Patient's signature</h4>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div className="text-center mb-5">
          {/* <button
                  className="btn btn-success no-print mx-3 mb-3 mt-2 no-print"
                  onClick={handleButton}
                >
                  Print
                </button> */}
          {/* <button
                  className="btn btn-info no-print mx-3 mb-3 mt-2"
                  onClick={() => navigate("/doctor-dashboard")}
                >
                  Appointment Dashboard
                </button> */}
          <button
            className="btn btn-info no-print mx-3 mb-3 mt-2 text-white shadow"
            style={{
              backgroundColor: "#0dcaf0",
              border: "#0dcaf0",
            }}
            onClick={handleDownloadPdf}
          >
            Download Prescription
          </button>
          <button
            className="btn btn-info no-print mx-3 mb-3 mt-2 text-white shadow"
            style={{
              backgroundColor: "#0dcaf0",
              border: "#0dcaf0",
            }}
            onClick={handleTreatNavigattion}
          >
            Treatment Dashboard
          </button>
          <br />
          Share on :
          {branchData[0]?.sharemail === "Yes" && (
            <button
              className="btn btn-info no-print mx-3 mb-3 mt-2 text-white shadow"
              style={{
                backgroundColor: "#0dcaf0",
                border: "#0dcaf0",
              }}
              onClick={sendPrescriptionMail}
            >
              <SiGmail />
            </button>
          )}
          {branchData[0]?.sharewhatsapp === "Yes" && (
            <button
              className="btn btn-info no-print mx-3 mb-3 mt-2 text-white shadow"
              style={{
                backgroundColor: "#0dcaf0",
                border: "#0dcaf0",
              }}
              onClick={sendPrescriptionWhatsapp}
            >
              <IoLogoWhatsapp />
            </button>
          )}
        </div>
      </Wrapper>
    </>
  );
};

export default PrescriptionQuick;
const Wrapper = styled.div`
  overflow: hidden;
  background-color: white;
  height: 100%;
  /* .dummy-cont {
    width: 90%;
  } */
  .doctor-detail {
    margin-bottom: 0.5rem;
  }
  @media print {
    @page {
      margin: 2rem; /* Remove default page margins */
    }

    body {
      margin: 0; /* Ensure no margin on the body */
    }

    .container-fluid {
      width: 100%; /* Optionally set the width */
      margin: 0; /* Remove margin */
      padding: 0; /* Remove padding */
      page-break-before: auto;
    }
  }
  @media print {
    .no-print {
      display: none !important;
    }
  }

  .headerimg {
    img {
      width: 100%;
      height: 8.5rem;
    }
  }

  .sign-seal {
    display: flex;
    justify-content: space-between;
    align-items: center;
    margin-top: 2rem;
  }

  .clinic-logo {
    height: 9rem;
    display: flex;
    justify-content: center;
    align-items: center;
    img {
      height: 100%;
      width: 100%;
    }
  }

  /* th,
  td {
    font-size: 12px;
  } */
`;
