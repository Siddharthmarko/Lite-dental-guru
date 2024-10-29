import React, { useState, useEffect, useRef } from "react";
import styled from "styled-components";
import { useNavigate, useParams } from "react-router-dom";
import axios from "axios";
import { useSelector } from "react-redux";
import numWords from "num-words";
import html2canvas from "html2canvas";
import jsPDF from "jspdf";
import { SiGmail, SiGooglemessages } from "react-icons/si";
import { IoLogoWhatsapp } from "react-icons/io";
import cogoToast from "cogo-toast";

const PatientBillsByTpid = () => {
  const { tpid } = useParams();
  const contentRef = useRef();
  const navigate = useNavigate();
  const branchData = useSelector((state) => state.branch.currentBranch);
  const test = useSelector((state) => state.branch);
  console.log(test);

  const [getPatientData, setGetPatientData] = useState([]);
  const user = useSelector((state) => state.user);
  const token = user.currentUser?.token;
  const branch = user.currentUser?.branch_name;
  console.log(branch);
  const currentBranch = useSelector((state) => state.branch.currentBranch);
  console.log(currentBranch, "kkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk");
  const [getExaminData, setGetExaminData] = useState([]);
  const [getTreatData, setGetTreatData] = useState([]);
  const [getTreatMedicine, setGetTreatMedicine] = useState([]);
  const [getTreatSug, setGetTreatSug] = useState([]);
  const [getBranch, setGetBranch] = useState([]);
  const [billDetails, setBillDetails] = useState([]);

  const getBranchDetails = async () => {
    try {
      const { data } = await axios.get(
        `http://localhost:8888/api/doctor/getBranchDetails/${branch}`,
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

  console.log(getBranch[0]?.hospital_name);
  // Get Patient Details START
  const getPatientDetail = async () => {
    try {
      const res = await axios.get(
        `http://localhost:8888/api/doctor/getAppointmentsWithPatientDetailsById/${tpid}`,
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

  console.log(getPatientData[0]?.address);
  useEffect(() => {
    getPatientDetail();
    getBranchDetails();
  }, []);
  // Get Patient Details END

  // Get Patient Examintion Details START
  const getExaminDetail = async () => {
    try {
      const res = await axios.get(
        `http://localhost:8888/api/doctor/getDentalDataByTpid/${tpid}/${branch}`,
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
  // Get Patient Examintion Details END

  // Get Patient Treatment Details START
  const getTreatDetail = async () => {
    try {
      const { data } = await axios.get(
        `http://localhost:8888/api/doctor/getTreatmentDetailsViaTpid/${tpid}/${branch}`,
        {
          headers: {
            "Content-Type": "application/json",
            Authorization: `Bearer ${token}`,
          },
        }
      );
      setGetTreatData(data);
      console.log(data);
    } catch (error) {
      console.log(error);
    }
  };

  console.log(getTreatData);
  useEffect(() => {
    getTreatDetail();
  }, []);
  // Get Patient Treatment Details END

  // Get Treatment Medical Prescription Data START
  const getTreatPrescriptionByAppointId = async () => {
    try {
      const { data } = await axios.get(
        `http://localhost:8888/api/doctor/getTreatPrescriptionByTpid/${tpid}/${branch}`,
        {
          headers: {
            "Content-Type": "application/json",
            Authorization: `Bearer ${token}`,
          },
        }
      );
      setGetTreatMedicine(data);
      console.log(data);
    } catch (error) {
      console.log(error);
    }
  };

  useEffect(() => {
    getTreatPrescriptionByAppointId();
  }, []);
  // Get Treatment Medical Prescription Data END

  // Get Treatment Suggest START
  const getTreatmentSuggestAppointId = async () => {
    try {
      const { data } = await axios.get(
        `http://localhost:8888/api/doctor/getTreatSuggestViaTpid/${tpid}/${branch}`,
        {
          headers: {
            "Content-Type": "application/json",
            Authorization: `Bearer ${token}`,
          },
        }
      );
      setGetTreatSug(data.data);
      console.log(data.data);
    } catch (error) {
      console.log(error);
    }
  };

  console.log(getTreatSug);
  // Get Treatment Suggest END

  const handleButton = async () => {
    try {
      window.print();
    } catch (error) {
      console.log("Error updating sitting count", error);
    }
  };

  const getBillDetails = async () => {
    try {
      const { data } = await axios.get(
        `http://localhost:8888/api/doctor/billDetailsViaTpid/${tpid}`,
        {
          headers: {
            "Content-Type": "application/json",
            Authorization: `Bearer ${token}`,
          },
        }
      );
      console.log(data, "fjsadlkjflksdajflksdajflksdfj");
      setBillDetails(data);
    } catch (error) {
      console.log(error);
    }
  };

  console.log(billDetails);
  const totalBillvalueWithoutGst = getTreatData?.reduce((total, item) => {
    if (billDetails[0]?.due_amount === billDetails[0]?.net_amount) {
      return total + Number(item.paid_amount);
    } else {
      return (
        Number(billDetails[0]?.paid_amount) +
        Number(billDetails[0]?.pay_by_sec_amt)
      );
    }
  }, 0);

  console.log(totalBillvalueWithoutGst);

  useEffect(() => {
    getTreatmentSuggestAppointId();
    getBillDetails();
  }, []);

  console.log(billDetails);

  const totalDueAmount = getTreatData?.reduce((total, item) => {
    return total + Number(item.total_amt);
  }, 0);

  console.log(billDetails[0]?.total_amount - totalBillvalueWithoutGst);

  const netVal = getTreatData?.filter((item) => {
    return item.sitting_number === 1;
  });

  console.log(billDetails[0]?.total_amount, totalBillvalueWithoutGst);

  const payafterTreat = getTreatData.reduce(
    (total, item) => total + Number(item.paid_amount),
    0
  );

  console.log(payafterTreat);

  useEffect(() => {
    const handlePopState = (event) => {
      // Push a new state to ensure the user stays on the current page
      window.history.pushState(null, "", window.location.href);
    };

    // Listen for popstate events
    window.addEventListener("popstate", handlePopState);

    // Push the initial state
    window.history.pushState(null, "", window.location.href);

    return () => {
      window.removeEventListener("popstate", handlePopState);
    };
  }, []);

  const handleDownloadPdf = async () => {
    const element = contentRef.current;
    const canvas = await html2canvas(element);
    const imgData = canvas.toDataURL("image/png");
    const pdf = new jsPDF();
    const imgWidth = 210; // A4 width in mm
    const imgHeight = (canvas.height * imgWidth) / canvas.width;

    pdf.addImage(imgData, "PNG", 0, 0, imgWidth, imgHeight, undefined, "FAST");
    pdf.save("final bill.pdf");
  };

  const sendPrescriptionMail = async () => {
    try {
      // Ensure contentRef is valid
      const element = contentRef.current;
      if (!element) {
        console.error("contentRef is not defined or invalid.");
        cogoToast.error("Content not found.");
        return;
      }
  
      // Generate the PDF from the HTML element
      const canvas = await html2canvas(element);
      const imgData = canvas.toDataURL("image/png");
      const pdf = new jsPDF();
      const imgWidth = 210; // A4 width in mm
      const imgHeight = (canvas.height * imgWidth) / canvas.width;
  
      pdf.addImage(imgData, "PNG", 0, 0, imgWidth, imgHeight);
      const pdfData = pdf.output("blob");
  
      // Prepare form data
      const formData = new FormData();
      if (getPatientData.length > 0) {
        const patient = getPatientData[0];
        formData.append("email", patient.emailid);
        formData.append("patient_name", patient.patient_name);
        formData.append("subject", `${patient.patient_name}, your final bill file`);
        formData.append("textMatter", `Dear ${patient.patient_name}, please find the attached final bill file.`);
        formData.append("file", pdfData, "prescription.pdf");
  
        // Log form data for debugging
        for (let [key, value] of formData.entries()) {
          console.log(key, value);
        }
  
        // Make the API call
        const response = await axios.post(
          "http://localhost:8888/api/doctor/prescriptionOnMail",
          formData,
          {
            headers: {
              "Content-Type": "multipart/form-data", // Optional for FormData
              Authorization: `Bearer ${token}`, // Assuming token is defined
            },
            timeout: 15000, // Increase timeout if necessary
          }
        );
  
        if (response.status === 200) {
          cogoToast.success("Treatment bill sent successfully");
          console.log("PDF sent successfully:", response.data);
        } else {
          console.error("Failed to send PDF, server error:", response);
          cogoToast.error("Failed to send bill, server error.");
        }
      } else {
        console.error("Patient data is not available");
        cogoToast.error("Patient data is missing.");
      }
    } catch (error) {
      console.error("Error sending PDF:", error);
      cogoToast.error("Error sending bill.");
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

      pdf.addImage(imgData, "PNG", 0, 0, imgWidth, imgHeight);
      const pdfData = pdf.output("blob");
      console.log(pdfData);

      const formData = new FormData();
      formData.append("phoneNumber", getPatientData[0]?.mobileno);
      formData.append("message", "test message");
      // Convert Blob to a File
      const file = new File([pdfData], "treatment bill.pdf", {
        type: "application/pdf",
      });

      formData.append("media_url", file);
      for (let [key, value] of formData.entries()) {
        console.log(key, value);
      }

      const res = await axios.post(
        "http://localhost:8888/api/doctor/sendWhatsapp",
        formData,
        {
          headers: {
            "Content-Type": "multipart/form-data",
          },
        }
      );
      cogoToast.success("sitting bill sent successfully");
      console.log("PDF sent successfully");
    } catch (error) {
      console.error("Error sending PDF:", error);
    }
  };

  const formDetails = {
    phoneNumber: getPatientData[0]?.mobileno,
    message: `Dear ${getPatientData[0]?.patient_name}, your bill generated for the treatment, bill amount is ${billDetails[0]?.total_amount}/-`,
  };
  const billDetailsSms = async () => {
    try {
      const { data } = await axios.post(
        "http://localhost:8888/api/doctor/sendSMS",
        formDetails,
        {
          headers: {
            "Content-Type": "application/json",
            Authorization: `Bearer ${token}`,
          },
        }
      );
      cogoToast.success("bill details sent successfully");
    } catch (error) {
      console.log(error);
    }
  };

  return (
    <>
      <Wrapper>
        {/* branch details */}
        {/* <div className="container-fluid">
          <div className="row">
            <div className="col-xxl-4 col-xl-4 col-lg-4 col-md-4 col-sm-4 col-4">
              <div className="clinic-logo">
                <img
                  src="https://res.cloudinary.com/dq5upuxm8/image/upload/v1708075638/dental%20guru/Login-page_1_cwadmt.png"
                  alt=""
                  className="img-fluid"
                />
              </div>
            </div>
            <div className="col-xxl-8 col-xl-8 col-lg-8 col-md-8 col-sm-8 col-8">
              <div className="header-left">
                <h3 className="text-center">Invoice</h3>
                <hr />
                <h6>
                  <strong>Clinic Name :</strong>{" "}
                  <span
                    className="fw-bold text-capitalize"
                    style={{ color: "#00b894" }}
                  >
                    {getBranch[0]?.hospital_name}
                  </span>
                </h6>
                <hr />
                <h6>
                  <strong>Branch Name :</strong>{" "}
                  <span
                    className="fw-bold text-capitalize"
                    style={{ color: "#00b894" }}
                  >
                    {getBranch[0]?.branch_name}
                  </span>
                </h6>
                <hr />
                <h6>
                  <strong>Address :</strong>{" "}
                  <span
                    className="fw-bold text-capitalize"
                    style={{ color: "#00b894" }}
                  >
                    {getBranch[0]?.branch_address}
                  </span>
                </h6>
                <hr />
                <h6>
                  <strong>Phone No. :</strong>{" "}
                  <span
                    className="fw-bold text-capitalize"
                    style={{ color: "#00b894" }}
                  >
                    {getBranch[0]?.branch_contact}
                  </span>
                </h6>
                <hr />
                <h6>
                  <strong>Email ID :</strong>{" "}
                  <span className="fw-bold" style={{ color: "#00b894" }}>
                    {getBranch[0]?.branch_email}
                  </span>
                </h6>
              </div>
            </div>
          </div>
          <hr />
        </div> */}
        <div className="container-fluid">
          <div className="d-flex justify-content-between">
            <button
              className="btn btn-info no-print mt-2 mb-2 text-white shadow"
              style={{
                backgroundColor: "#2784fd",
                border: "#0dcaf0",
              }}
              onClick={() => {
                navigate(-1)
              }}
            >
              Back
            </button>
            <button
              className="btn btn-info no-print mt-2 mb-2 text-white shadow"
              style={{
                backgroundColor: "#0dcaf0",
                border: "#0dcaf0",
              }}
              onClick={handleButton}
            >
              Print
            </button>
          </div>
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
          {/* patient details */}
          <div className="text-center">
            <h3>Invoice</h3>
          </div>
          <div className="container-fluid">
            <div className="heading-title">
              <h4 className="">Patient Details :</h4>
            </div>
            <h6 className="fw-bold">
              Patient Type : {getPatientData[0]?.patient_type}
            </h6>
            <table className="table table-bordered border">
              <tbody>
                {getPatientData?.map((item, index) => (
                  <React.Fragment key={index}>
                    {item?.patient_type === "Credit" && (
                      <tr>
                        <th scope="row">Credit By</th>
                        <td>{item?.credit_By}</td>
                        <th scope="row">Beneficiary Id</th>
                        <td>{item?.beneficiary_Id}</td>
                      </tr>
                    )}
                    <tr>
                      <th scope="row">UHID</th>
                      <td>{item.uhid}</td>
                      <th scope="row">Gender</th>
                      <td>{item.gender}</td>
                    </tr>

                    <tr>
                      <th scope="row">Name</th>
                      <td>{item.patient_name}</td>
                      <th scope="row">Age</th>
                      <td>{item.age}</td>
                    </tr>
                    <tr>
                      <th scope="row">Address</th>
                      <td>{item.address}</td>
                      <th scope="row">Invoice No.</th>
                      <td>{billDetails[0]?.bill_id}</td>
                    </tr>
                    <tr>
                      <th scope="row">Mobile No.</th>
                      <td>{item.mobileno}</td>
                      <th scope="row">Date</th>
                      <td>{billDetails[0]?.bill_date.split("T")[0]}</td>
                    </tr>
                    <tr>
                      <th scope="row">Email</th>
                      <td>{item.emailid}</td>
                      <th scope="row">Treatment Package ID</th>
                      <td>{tpid}</td>
                    </tr>
                  </React.Fragment>
                ))}
              </tbody>
            </table>
          </div>
          {/* doctor details */}
          <div className="container-fluid">
            <div className="heading-title">
              <h4 className="">Doctor Details :</h4>
            </div>
            <div className="d-flex justify-content-between">
              <div className="text-start docDetails">
                <p>
                  <strong>Doctor Name :</strong> Dr.{" "}
                  {user.currentUser?.employee_name}
                </p>
                <p>
                  <strong>Mobile :</strong> {user.currentUser?.employee_mobile}
                </p>
                <p>
                  <strong>Email :</strong> {user.currentUser?.email}
                </p>
              </div>
            </div>
          </div>

          {/* patient observation */}
          <div className="container-fluid">
            <div className="heading-title">
              <h4 className="">Patient Observation :</h4>
            </div>
            <table className="table table-bordered border">
              <thead>
                <tr>
                  <th>Seleted Teeth</th>
                  <th>Disease</th>
                  <th>Chief Complain</th>
                  <th>On Exmination</th>
                  <th>Advice</th>
                </tr>
              </thead>
              {getExaminData?.map((item, index) => (
                <tbody>
                  <React.Fragment>
                    <tr>
                      <td>{item.selected_teeth}</td>
                      <td>{item.disease}</td>
                      <td>{item.chief_complain}</td>
                      <td>{item.on_examination}</td>
                      <td>{item.advice}</td>
                    </tr>
                  </React.Fragment>
                </tbody>
              ))}
            </table>
          </div>

          {/* treatment provided */}
          <div className="container-fluid">
            <div className="heading-title">
              <h4 className="">Treatment Procedure :</h4>
            </div>
            <div className="Treatment">
              {/* <p className="text-start fs-4 fw-bold">Treatment Procedure</p> */}
              <table className="table table-bordered border">
                <thead>
                  <tr>
                    <th>S. No.</th>
                    <th>Treatment</th>
                    <th>Teeth</th>
                    <th>Qty</th>
                    <th>Cost</th>
                    <th>Cst * Qty</th>
                    <th>Disc %</th>
                    <th>Net Sitting Amount</th>
                    <th>Paid Amount</th>
                  </tr>
                </thead>
                {getTreatData?.map((item, index) => (
                  <tbody>
                    <React.Fragment>
                      <tr
                        className={
                          index % 2 === 0 ? "table-primary" : "table-info"
                        }
                      >
                        <td>{item.sitting_number}</td>
                        <td>{item.dental_treatment}</td>
                        <td>{item.no_teeth}</td>
                        <td>{item.qty}</td>
                        <td>{item.cost_amt}</td>
                        <td>{item.total_amt}</td>
                        <td>{item.disc_amt}</td>
                        <td>{item.paid_amount}</td>
                        <td>
                          {" "}
                          {item.sitting_payment_status === "Pending"
                            ? 0
                            : item.paid_amount}
                        </td>
                      </tr>
                    </React.Fragment>
                  </tbody>
                ))}
                <tfoot>
                  <tr>
                    <td
                      colSpan="8"
                      style={{ textAlign: "center" }}
                      className="heading-title text-danger fw-bold "
                    >
                      Treatment Pending Payment:
                    </td>
                    <td className="heading-title text-danger fw-bold">
                      {/* Calculate total cost here */}
                      {/* Assuming getTreatData is an array of objects with 'net_amount' property */}
                      {billDetails[0]?.total_amount -
                        billDetails[0]?.paid_amount}
                    </td>
                  </tr>
                </tfoot>
                <tfoot>
                  <tr>
                    <td
                      colSpan="7"
                      style={{ textAlign: "right" }}
                      className="heading-title "
                    >
                      Treatment Total:
                    </td>
                    <td className="heading-title">
                      {/* {netVal.reduce(
                        (total, item) =>
                          total +
                          (Number(item.total_amt) -
                            (Number(item.total_amt) * Number(item.disc_amt)) /
                              100),
                        0
                      )} */}
                      {billDetails[0]?.total_amount}
                    </td>

                    <td className="heading-title">
                      {/* {getTreatData.reduce(
                        (total, item) =>
                          item.sitting_payment_status === "Pending"
                            ? total
                            : total + Number(item.paid_amount),
                        0
                      )}
                       */}

                      {billDetails[0]?.paid_amount}
                    </td>
                  </tr>
                </tfoot>
              </table>
            </div>
          </div>
          {/* terms and condition */}
          <div className="container-fluid">
            <div className="row gutter">
              <div className="col-xxl-8 col-xl-8 col-lg-8 col-md-8 col-sm-8 col-8">
                <div className="border">
                  <div className="heading-title mt-0">
                    <h4 className="">Total Amount In Words :</h4>
                  </div>
                  <div className="text-word">
                    <p className="m-0 px-1">
                      {numWords(billDetails[0]?.paid_amount).toUpperCase()} ONLY
                    </p>
                  </div>
                </div>
                <div className="">
                  <div className="heading-title mt-0">
                    <h4 className="">Payment Info :</h4>
                  </div>
                  <div className="">
                    <table className="table table-bordered mb-0">
                      <tbody>
                        <tr>
                          <td className="col-xxl-4 col-xl-4 col-lg-4 col-md-4 col-sm-4 col-4 border p-1">
                            Account No.:
                          </td>
                          <td className="col-xxl-8 col-xl-8 col-lg-8 col-md-8 col-sm-8 col-8 border p-1">
                            {currentBranch[0]?.account_number}
                          </td>
                        </tr>
                        <tr>
                          <td className="col-xxl-4 col-xl-4 col-lg-4 col-md-4 col-sm-4 col-4 border p-1">
                            Account Name:
                          </td>
                          <td className="col-xxl-8 col-xl-8 col-lg-8 col-md-8 col-sm-8 col-8 border p-1">
                            {/* Assuming you want to put a placeholder or value here */}
                            {currentBranch[0]?.branch_name}
                          </td>
                        </tr>
                        <tr>
                          <td className="col-xxl-4 col-xl-4 col-lg-4 col-md-4 col-sm-4 col-4 border p-1">
                            Bank Name:
                          </td>
                          <td className="col-xxl-8 col-xl-8 col-lg-8 col-md-8 col-sm-8 col-8 border p-1">
                            {currentBranch[0]?.bank_name}
                          </td>
                        </tr>
                        <tr>
                          <td className="col-xxl-4 col-xl-4 col-lg-4 col-md-4 col-sm-4 col-4 border p-1">
                            IFSC/Bank Code:
                          </td>
                          <td className="col-xxl-8 col-xl-8 col-lg-8 col-md-8 col-sm-8 col-8 border p-1">
                            {currentBranch[0]?.ifsc_code}
                          </td>
                        </tr>
                        <tr>
                          <td className="col-xxl-4 col-xl-4 col-lg-4 col-md-4 col-sm-4 col-4 border p-1">
                            UPI ID:
                          </td>
                          <td className="col-xxl-8 col-xl-8 col-lg-8 col-md-8 col-sm-8 col-8 border p-1">
                            {currentBranch[0]?.upi_id}
                          </td>
                        </tr>
                      </tbody>
                    </table>
                  </div>
                </div>
              </div>
              <div className="col-xxl-4 col-xl-4 col-lg-4 col-md-4 col-sm-4 col-4">
                <div className="">
                  <table className="table table-bordered mb-0">
                    <tbody>
                      <tr>
                        <td className="col-xxl-6 col-xl-6 col-lg-6 col-md-6 col-sm-6 col-6 border p-1 text-end total-tr">
                          Amount Received After Treatment:
                        </td>
                        <td className="col-xxl-6 col-xl-6 col-lg-6 col-md-6 col-sm-6 col-6 border p-1 text-center total-tr">
                          {billDetails[0]?.payment_status === "Paid" &&
                            billDetails[0]?.total_amount - payafterTreat}
                        </td>
                      </tr>
                    </tbody>
                    <tbody>
                      <tr>
                        <td className="col-xxl-6 col-xl-6 col-lg-6 col-md-6 col-sm-6 col-6 border p-1 text-end total-tr">
                          Total Amount Recieved:
                        </td>
                        <td className="col-xxl-6 col-xl-6 col-lg-6 col-md-6 col-sm-6 col-6 border p-1 text-center total-tr">
                          {/* {totalBillvalueWithoutGst} */}
                          {billDetails[0]?.paid_amount}
                        </td>
                      </tr>
                    </tbody>
                  </table>
                </div>
                <div className="border">
                  <div className="text-terms"></div>
                  <div className="heading-title mt-0">
                    <h5 className="text-center ">Clinic Seal & Signature</h5>
                  </div>
                </div>
              </div>
            </div>
            <div className="border">
              <div className="heading-title mt-0">
                <h4 className="">Terms and Conditions :</h4>
              </div>
              <div className="text-termslong"></div>
            </div>
          </div>
        </div>

        {/* print button */}
        <div className="container-fluid">
          <div className="text-center">
            {/* <button
              className="btn btn-info no-print mt-2 mb-2"
              onClick={handleButton}
            >
              Print
            </button> */}
            <button
              className="btn btn-info no-print mx-3 mb-3 mt-3 text-white shadow"
              style={{
                backgroundColor: "#0dcaf0",
                border: "#0dcaf0",
              }}
              onClick={handleDownloadPdf}
            >
              Download Bill
            </button>
            {branchData[0]?.doctor_payment === "No" ? (
              <>
                {" "}
                <button
                  className="btn btn-info no-print mx-3 mb-4 mt-2 text-white shadow"
                  style={{
                    backgroundColor: "#0dcaf0",
                    border: "#0dcaf0",
                  }}
                  onClick={() => navigate("/dashboard")}
                >
                  Appointment Dashboard
                </button>
              </>
            ) : (
              <>
                {billDetails[0]?.payment_status === "Paid" ? (
                  ""
                ) : (
                  <>
                    {billDetails[0]?.payment_status === "Credit" ? (
                      ""
                    ) : (
                      <>
                        {" "}
                        <button
                          className="btn btn-success ms-2 no-print mt-2 mb-2 text-white shadow"
                          style={{
                            backgroundColor: "#0dcaf0",
                            border: "#0dcaf0",
                          }}
                          onClick={() =>
                            navigate(`/patient-due-payment-print/${tpid}`)
                          }
                        >
                          Go to Payment page
                        </button>
                        <button
                          className="btn btn-info no-print mx-3 mt-2 mb-2 text-white shadow"
                          style={{
                            backgroundColor: "#0dcaf0",
                            border: "#0dcaf0",
                          }}
                          onClick={() => navigate("/dashboard")}
                        >
                          Dashboard
                        </button>
                      </>
                    )}
                  </>
                )}
                {billDetails[0]?.payment_status !== "Paid" &&
                billDetails[0]?.payment_status !== "Credit" ? (
                  ""
                ) : (
                  <>
                    <button
                      className="btn btn-info no-print mx-3 mt-2 mb-2 text-white shadow"
                      style={{
                        backgroundColor: "#0dcaf0",
                        border: "#0dcaf0",
                      }}
                      onClick={() => navigate("/dashboard")}
                    >
                      Appointment Dashboard
                    </button>
                  </>
                )}
              </>
            )}
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
            {branchData[0]?.sharesms === "Yes" && (
              <button
                className="btn btn-info no-print mx-3 mb-3 mt-2 text-white shadow"
                style={{
                  backgroundColor: "#0dcaf0",
                  border: "#0dcaf0",
                }}
                onClick={billDetailsSms}
              >
                <SiGooglemessages />
              </button>
            )}
            {/* <button
              className="btn btn-info no-print mx-3 mt-2 mb-2"
              onClick={() => navigate("/doctor-dashboard")}
            >
              Appointment Dashboard
            </button> */}
          </div>
        </div>
      </Wrapper>
    </>
  );
};

export default PatientBillsByTpid;
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
    height: 10rem;
    display: flex;
    justify-content: center;
    align-items: center;
    img {
      height: 100%;
      width: 100%;
    }
  }
  .heading-title {
    /* background-color: #34495e; */
    /* margin-top: 1rem; */
    padding: 2px;
    border-radius: 3px;
    /* h4 {
      color: white;
    }
    h5 {
      color: white;
    } */
  }
  h4,
  h6 {
    margin-bottom: 0.1rem;
  }

  .docDetails {
    p {
      margin: 0rem;
    }
  }

  hr {
    margin: 0.2rem;
  }
  .text-word {
    height: auto;
  }

  .text-terms {
    height: 7.5rem;
  }

  .gutter {
    --bs-gutter-x: 0rem !important;
  }

  /* .total-tr {
    background-color: #34495e;
    color: white;
  } */

  table > :not(caption) > * > * {
    padding: 0.2rem 0.2rem;
  }

  table {
    margin-bottom: 0.3rem;
  }

  .text-termslong {
    height: 2rem;
  }
  /* th,
  td {
    font-size: 12px;
  } */
`;
