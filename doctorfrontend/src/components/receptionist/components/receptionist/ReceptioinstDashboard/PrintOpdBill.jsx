import React, { useEffect, useRef, useState } from "react";
import { styled } from "styled-components";
import { Navigate, useNavigate, useParams } from "react-router-dom";
import axios from "axios";
import cogoToast from "cogo-toast";
import { useSelector } from "react-redux";
import moment from "moment";
import { FaPrint } from "react-icons/fa6";
import { FaHome } from "react-icons/fa";
import { IoMdArrowRoundBack } from "react-icons/io";
import html2canvas from "html2canvas";
import jsPDF from "jspdf";
import { SiGmail, SiGooglemessages } from "react-icons/si";
import { IoLogoWhatsapp } from "react-icons/io";

const PrintOpdBill = () => {
  const pdfRef = useRef();
  const { appointmentId } = useParams();
  const contentRef = useRef();
  const user = useSelector((state) => state.user);
  const {currentBranch} = useSelector((state) => state.branch);

  const { refreshTable, currentUser } = useSelector((state) => state.user);
  const branch = currentUser?.branch_name;
  const token = currentUser?.token;

  const [data, setData] = useState("");
  const [getBranch, setGetBranch] = useState([]);

  const navigate = useNavigate();

  const getBranchDetails = async () => {
    try {
      const { data } = await axios.get(
        `http://localhost:8888/api/v1/receptionist/getBranchDetailsByBranch/${branch}`
      );
      console.log(data);
      setGetBranch(data);
    } catch (error) {
      console.log(error);
    }
  };

  const getBill = async () => {
    try {
      const response = await axios.get(
        `http://localhost:8888/api/v1/receptionist/get-appointment-by-id/${branch}/${appointmentId}`,
        {
          headers: {
            "Content-Type": "application/json",
            Authorization: `Bearer ${token}`,
          },
        }
      );
      console.log(response?.data?.data);
      setData(response?.data?.data);
    } catch (error) {
      console.log(error);
      cogoToast.error("error in getting appointment");
    }
  };

  useEffect(() => {
    getBill();
    getBranchDetails();
  }, []);

  const handlePrint = () => {
    window.print();
  };

  // const handleDownloadPdf = async () => {
  //   const element = contentRef.current;
  //   const canvas = await html2canvas(element);
  //   const imgData = canvas.toDataURL("image/png");
  //   const pdf = new jsPDF();
  //   const imgWidth = 210; // A4 width in mm
  //   const imgHeight = (canvas.height * imgWidth) / canvas.width;

  //   pdf.addImage(imgData, "PNG", 0, 0, imgWidth, imgHeight);
  //   pdf.save("sitting bill.pdf");
  // };



    // optimize code for reduce pdf size
    const handleDownloadPdf = async () => {
      const element = contentRef.current;
      const canvas = await html2canvas(element, { scale: 2 }); // Increase the scale for better quality
      const imgData = canvas.toDataURL("image/jpeg", 0.75); // Use JPEG with 75% quality
  
      const pdf = new jsPDF();
      const imgWidth = 210; // A4 width in mm
      const imgHeight = (canvas.height * imgWidth) / canvas.width;
  
      pdf.addImage(imgData, "JPEG", 0, 0, imgWidth, imgHeight, undefined, 'FAST'); // Use 'FAST' for compression
      pdf.save("sitting bill.pdf");
    };



  const sendPrescriptionMail = async () => {
    if(!data.emailid){
      alert("Email id not available")
      return
    }
    try {
      const element = contentRef.current;
     const canvas = await html2canvas(element, { scale: 2 }); // Increase the scale for better quality
      const imgData = canvas.toDataURL("image/jpeg", 0.75); // Use JPEG with 75% quality
      const pdf = new jsPDF();
      const imgWidth = 210; // A4 width in mm
      const imgHeight = (canvas.height * imgWidth) / canvas.width;

      pdf.addImage(imgData, "JPEG", 0, 0, imgWidth, imgHeight, undefined, 'FAST'); // Use 'FAST' for compression
      const pdfData = pdf.output("blob");
      console.log(pdfData);

      const formData = new FormData();
      formData.append("email", data?.emailid);
      formData.append("patient_name", data?.patient_name);
      formData.append(
        "subject",
        `${data?.patient_name}, your OPD bill file`
      );
      formData.append(
        "textMatter",
        `Dear ${data?.patient_name}, Please find the attached OPD bill file.\n` +
           `Clinic Details:\n` +
        `Name: ${currentBranch[0]?.hospital_name}\n` +
        `Contact: ${currentBranch[0]?.branch_contact}\n` +
        `Address: ${currentBranch[0]?.branch_address}\n` +
        `Email: ${currentBranch[0]?.branch_email}\n\n` +
        `Thank you for choosing ${currentBranch[0]?.hospital_name}.\n\n` +
        `Best regards,\n` +
        `${currentBranch[0]?.hospital_name} Team`
      );
      formData.append("file", pdfData, "OPD_bill.pdf");
      for (let [key, value] of formData.entries()) {
        console.log(key, value);
      }
     
      cogoToast.success("OPD bill Sending to email");
      const response = await axios.post(
        "http://localhost:8888/api/v1/receptionist/prescriptionOnMail",
        formData,
        {
          headers: {
            "Content-Type": "multipart/form-data",
            Authorization: `Bearer ${token}`,
          },
        }
      );
      cogoToast.success("OPD Bill sent successfully");
      console.log(response)
      console.log("PDF sent successfully:", response.data);
    } catch (error) {
      console.error("Error sending PDF:", error);
      cogoToast.error("Error to send bill");
    }
  };

  const sendPrescriptionWhatsapp = async () => {
    try {
      const element = contentRef.current;
      const canvas = await html2canvas(element, { scale: 2 }); // Increase the scale for better quality
      const imgData = canvas.toDataURL("image/jpeg", 0.75); // Use JPEG with 75% quality
      const pdf = new jsPDF();
      const imgWidth = 210; // A4 width in mm
      const imgHeight = (canvas.height * imgWidth) / canvas.width;

      pdf.addImage(imgData, "JPEG", 0, 0, imgWidth, imgHeight, undefined, 'FAST'); // Use 'FAST' for compression
      const pdfData = pdf.output("blob");
      console.log(pdfData);

      const formData = new FormData();
      formData.append("phoneNumber", data?.mobileno);
      formData.append("message", "test message");

      // formData.append("message", `Dear ${data?.patient_name}, Please find the attached OPD bill file.\n` + 
      //   `Clinic Details:\n` +
      //   `Name: ${currentBranch[0]?.hospital_name}\n` +
      //   `Contact: ${currentBranch[0]?.branch_contact}\n` +
      //   `Address: ${currentBranch[0]?.branch_address}\n` +
      //   `Email: ${currentBranch[0]?.branch_email}\n\n` +
      //   `Thank you for choosing ${currentBranch[0]?.hospital_name}.\n\n` +
      //   `Best regards,\n` +
      //   `${currentBranch[0]?.hospital_name} Team`
      // );

      // Convert Blob to a File
      const file = new File([pdfData], "OPD bill.pdf", {
        type: "application/pdf",
      });

      formData.append("media_url", file);
      for (let [key, value] of formData.entries()) {
        console.log(key, value);
      }

      const res = await axios.post(
        "http://localhost:8888/api/v1/receptionist/sendWhatsapp",
        formData,
        {
          headers: {
            "Content-Type": "multipart/form-data",
          },
        }
      );
      cogoToast.success("OPD bill sent successfully");
      console.log("PDF sent successfully");
    } catch (error) {
      console.error("Error sending PDF:", error);
      cogoToast.error("Error to send OPD bill");
    }
  };

  return (
    <Container>
      <div ref={contentRef}>
        <div className="headimage">
          <img src={getBranch[0]?.head_img} alt="header" srcset="" />
        </div>
        <div className="container-fluid mt-2 p-0">
          <div className="row">
            <div className="col-12 ">
              <h4 className="text-center heading"> OPD RECIEPT</h4>
            </div>
          </div>

          <div className="row">
            <div className="col-12">
              <table className="table table-borderless">
                <tbody>
                  <tr>
                    <th className="text-start">Appointment Id</th>
                    <td className="text-capitalize">
                      {": "}
                      {data?.appoint_id}
                    </td>

                    <th scope="col" className="text-start">
                      Patient id
                    </th>
                    <td className="text-capitalize">
                      {": "}
                      {data?.uhid}
                    </td>
                  </tr>
                  <tr>
                    <th scope="col" className="text-start">
                      Branch Name
                    </th>
                    <td className="text-capitalize">
                      {": "}
                      {data?.branch_name}
                    </td>
                    <th scope="col" className="text-start">
                      Patient Type
                    </th>
                    <td className="text-capitalize">
                      {": "}
                      {data?.patient_type}
                    </td>
                  </tr>
                  <tr>
                    <th scope="col" className="text-start">
                      Name
                    </th>
                    <td className="text-capitalize">
                      {": "}
                      {data?.patient_name}
                    </td>
                    <th scope="col" className="text-start pe-5">
                      Mobile No
                    </th>
                    <td className="text-capitalize">
                      {": "}
                      {data?.mobileno}
                    </td>

                    {/* <th scope="col" className='text-start'>Blood Group</th>
                  <td  className='text-capitalize'>{": "}{data?.bloodgroup}</td> */}
                  </tr>
                  <tr>
                    <th scope="col" className="text-start">
                      Gender
                    </th>
                    <td className="text-capitalize">
                      {": "}
                      {data?.gender}
                    </td>

                    <th scope="col" className="text-start">
                      Appointment
                    </th>
                    <td className="text-capitalize">
                      {": "}
                      {data?.appointment_dateTime
                        ? moment(
                            data?.appointment_dateTime,
                            "YYYY-MM-DDTHH:mm"
                          ).format("DD/MM/YYYY hh:mm A")
                        : ""}
                    </td>
                  </tr>
                  <tr>
                    <th scope="col" className="text-start">
                      Age
                    </th>
                    <td className="text-capitalize">
                      {": "}
                      {data?.age}
                    </td>
                    <th scope="col" className="text-start">
                      Doctor Name
                    </th>
                    <td className="text-capitalize">
                      {": "}
                      {"Dr. "}
                      {data?.assigned_doctor_name}
                    </td>
                  </tr>

                  <tr>
                    <th scope="col" className="text-start">
                      {" "}
                      Date
                    </th>
                    <td className="text-capitalize">
                      {": "}
                      {data?.created_at
                        ? moment(data?.created_at).format("DD/MM/YYYY")
                        : ""}
                    </td>
                    <th scope="col" className="text-start">
                      Payment Mode
                    </th>
                    <td className="text-capitalize">
                      {": "}
                      {data.payment_Mode}
                    </td>
                  </tr>

                  <tr>
                    {data.payment_Mode == "online" && (
                      <>
                        <th scope="col" className="text-start">
                          Transaction Id
                        </th>
                        <td className="text-capitalize">
                          {": "}
                          {data?.transaction_Id}
                        </td>{" "}
                      </>
                    )}
                    <th scope="col" className="text-start">
                      Payment Status
                    </th>
                    <td className="text-capitalize">
                      {": "}
                      {data.payment_Status}
                    </td>
                  </tr>
                  <tr>
                    <th scope="col" className="text-start">
                      Address
                    </th>
                    <td
                      className="text-capitalize"
                      style={{ whiteSpace: "normal" }}
                    >
                      {": "}
                      {data?.address}
                    </td>
                  </tr>
                </tbody>
              </table>
            </div>
          </div>

          <div className="row proc-detail">
            <div className="col-12">
              <table className="table table-borderless">
                <thead>
                  <tr>
                    <th className="text-start ps-4 pb-2 pt-1 ">S.No.</th>
                    <th
                      scope="col"
                      colSpan="1"
                      className="text-start pb-2 pt-1 code-column"
                    >
                      Treatment Name
                    </th>
                    <th scope="col" className="text-end pe-4 pb-2 pt-1">
                      Amount
                    </th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <td className="text-start ps-4 ">{"1"}</td>
                    <td
                      colSpan="1"
                      style={{ wordWrap: "break-word", whiteSpace: "normal" }}
                      className="text-start code-column"
                    >
                      OPD
                    </td>
                    <td className="text-end pe-4">
                      {data.opd_amount}
                      {".00"}
                    </td>
                  </tr>

                  <tr>
                    <th
                      scope="col"
                      className=""
                      style={{ width: "30% !important" }}
                    ></th>

                    <th scope="col" className="text-start pt-4 second-th">
                      Payable Amount INR
                    </th>

                    <th scope="col" className="text-end pe-4 pt-4">
                      {" "}
                      {data.opd_amount}
                      {".00"}
                    </th>
                  </tr>
                  <tr>
                    <th scope="col" className="" style={{ width: "30%" }}></th>
                    <th scope="col" className="text-start second-th">
                      {" "}
                      Amount Paid INR
                    </th>

                    <th scope="col" className="text-end pe-4">
                      {data.opd_amount}
                      {".00"}
                    </th>
                  </tr>

                  {/* <tr>
                  <th scope="col" className='' style={{ width: '30%' }}></th>
                  <th scope="col" className='text-start second-th'>Net Payable {" "}INR</th>
                  
                  <th scope="col" className='text-end pe-4'>{totalAmount}{".00"}</th>
                   </tr> */}
                </tbody>
              </table>
            </div>
          </div>
        </div>
        <div className="row">
          <div className="col-6 d-flex align-items-end ">
            <div>
              <h6 className="ms-5 preparedBy">
                Prepared by{" "}
                <span className="text-uppercase">
                  {data?.appointment_created_by}
                </span>
              </h6>
            </div>
          </div>

          {/* <div className='col-6 d-flex align-items-end gap-4'>
          <div className="sealimg">
            <img src={hospitalDoc?.sealimg} alt="header" srcset="" width="200px" height="150px"/>
          </div>

          <div className="signimg">
            <img src={hospitalDoc?.signimg} alt="header" srcset="" width="100px" height="100px"/>
          </div>

        </div> */}
        </div>

        <div className="footimage d-none d-print-block">
          <img src={getBranch[0]?.foot_img} alt="footer" srcset="" />
        </div>
      </div>
      <div className="d-flex justify-content-center my-3 gap-2">
      <button
          type="button"
          className="btn btn-info btn-lg shadow"
          onClick={() => window.history.go(-1)}
        >
        <IoMdArrowRoundBack />  Back
        </button>
        <button
          type="button"
          className="btn btn-info btn-lg shadow"
          onClick={handlePrint}
        >
          <FaPrint /> {" "}
          Print
        </button>
       
        <button
          type="button"
          className="btn btn-info btn-lg shadow"
          onClick={() => navigate("/receptionist-dashboard")}
        >
        <FaHome /> {" "}  Go to Dashboard
        </button>
        {/* <button
    type='button'
    className='btn btn-secondary btn-lg ms-3'
    onClick={generatePDF}
  >
    Generate PDF
  </button> */}
      </div>
      <div className="container-fluid">
          <div className="text-center">
            {/* <button
              className="btn btn-info no-print mx-3 mb-3 mt-2 text-white shadow"
              style={{
                backgroundColor: "#0dcaf0",
                border: "#0dcaf0",
              }}
              onClick={handleDownloadPdf}
            >
              Download Sitting Bill
            </button> */}
            {/* <button
              className="btn btn-info no-print text-white mt-2 mb-2"
              onClick={handleTreatNavigate}
              style={{
                backgroundColor: "#0dcaf0",
                border: "#0dcaf0",
              }}
            >
              Treatment Dashboard
            </button> */}
            <br />
            <span className="fs-5 fw-bold no-print"> Share on : </span>
            {currentBranch[0]?.sharemail === "Yes" && (
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
            {currentBranch[0]?.sharewhatsapp === "Yes" && (
              <button
                className="btn btn-info no-print mx-1 mb-3 mt-2 text-white shadow"
                style={{
                  backgroundColor: "#0dcaf0",
                  border: "#0dcaf0",
                }}
                onClick={sendPrescriptionWhatsapp}
              >
                <IoLogoWhatsapp />
              </button>
            )}
            {/* {currentBranch[0]?.sharesms === "Yes" && (
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
            )} */}
          </div>
          </div>
    </Container>
  );
};

export default PrintOpdBill;

const Container = styled.div`
  font-family: "Times New Roman", Times, serif;
  overflow-x: hidden;
  background-color: white;

  .code-column {
  }

  .headimage {
    height: 18rem;
    width: auto;
    img {
      height: 100%;
      width: 100%;
    }
  }
  .footimage {
    @media print {
      position: fixed;
      bottom: 0;
      left: 0;
      right: 0;
    }

    /* height: 60px; */
    width: auto;
    img {
      height: 100%;
      width: 100%;
    }
  }

  .heading {
    border-bottom: 2px solid black;
    font-weight: 700;
  }
  .details-1 {
    border-bottom: 2px solid black;
  }
  table {
    width: 100%;
    border-collapse: collapse;
    padding: 0;
    /* margin-bottom: 10px;  */
  }

  th {
    /* padding: 8px; */
    text-align: center;
    white-space: nowrap; /* Prevent text from wrapping */
    font-weight: 600;
    font-size: medium;
    color: black;
    /* letter-spacing: 1.5px; */
    padding-top: 0;
    padding-bottom: 0;
  }
  td {
    /* padding: 8px; */
    text-align: start;
    white-space: nowrap;
    font-weight: 600;
    font-size: medium;
    color: black;
    /* letter-spacing: 0.5px; */
    padding-top: 0;
    padding-bottom: 0;
  }
  .proc-detail {
    border-top: 2px solid black;
  }
  .btn-info{
    @media print {
      display: none;
    }
  }
  .no-print{
    @media print {
      display: none;
    }
  }
  .preparedBy {
    /* font-weight: 900; */
    font-weight: bolder;
    font-size: medium;
  }
  .sealimg:not(img) {
    border: 0 !important;
  }
  .signimg:not(img) {
    border: 0 !important;
  }
  .second-th {
    padding-left: 30%;
  }
`;
