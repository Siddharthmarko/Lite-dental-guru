import React, { useEffect, useRef, useState } from "react";
import styled from "styled-components";
import Header from "../receptionist/components/receptionist/Header";
import Sider from "../receptionist/components/receptionist/Sider";
import { Link } from "react-router-dom";
// import BranchSelector from "../components/BranchSelector";
import axios from "axios";
import cogoToast from "cogo-toast";
import { useDispatch, useSelector } from "react-redux";
import Lottie from "react-lottie";
// import animationData from "../animation/loading-effect.json";
import { setBranch } from "../../redux/user/branchSlice";
import animationData from "../animationData.json";

const Branches = () => {
  const dispatch = useDispatch();
  const [showPopup, setShowPopup] = useState(false);
  const [branchHeadImg, setBranchHeadImg] = useState(null);
  const [branchFootImg, setBranchFootImg] = useState(null);
  const [popupVisible, setPopupVisible] = useState(false);
  const [loading, setLoading] = useState(true);
  const user = useSelector((state) => state.user);
  const currentBranch = useSelector((state) => state.branch.currentBranch);
  console.log(currentBranch);
  const currentUser = useSelector((state) => state.user.currentUser);
  const token = currentUser?.token;
  console.log(currentUser);
  const [selectedItem, setSelectedItem] = useState({ ...currentUser });
  const [branchList, setBranchList] = useState();
  const [headError, setHeadError] = useState("");
  const [footError, setFootError] = useState("");
  const [upData, setUpData] = useState({
    name: selectedItem.branch_name,
    address: selectedItem.branch_address,
    contact: selectedItem.branch_contact,
    account_number: selectedItem.account_number,
    bank_name: selectedItem.bank_name,
    upi_id: selectedItem.upi_id,
    ifsc_code: selectedItem.ifsc_code,
  });

  // Create references for file input fields
  const branchHeadImgRef = useRef(null);
  const branchFootImgRef = useRef(null);
  useEffect(() => {
    setUpData({
      name: selectedItem.branch_name,
      address: selectedItem.branch_address,
      contact: selectedItem.branch_contact,
      account_number: selectedItem.account_number,
      bank_name: selectedItem.bank_name,
      upi_id: selectedItem.upi_id,
      ifsc_code: selectedItem.ifsc_code,
    });
  }, [selectedItem]);

  console.log(selectedItem.branch_name);

  const handleChange = (event) => {
    const { name, value } = event.target;

    if (name === "contact") {
      if (/^\d*$/.test(value) && value.length <= 10) {
        setUpData((prevEmpData) => ({
          ...prevEmpData,
          [name]: value,
        }));
      }
    } else {
      setUpData({
        ...upData,
        [name]: value,
      });
    }
  };

  const defaultOptions = {
    loop: true,
    autoplay: true,
    animationData: animationData,
    rendererSettings: {
      preserveAspectRatio: "xMidYMid slice",
    },
  };

  const openUpdatePopup = (id, item) => {
    setSelectedItem(item);
    console.log(item);
    setShowPopup(true);
  };

  console.log(selectedItem);

  console.log(upData, branchHeadImg);
  // console.log(branchFootImg.file);

  const updateBranchDetails = async (e, id) => {
    console.log(id);
    e.preventDefault();

    try {
      const formData = new FormData();
      for (const key in upData) {
        formData.append(key, upData[key]);
      }

      formData.append("head_img", branchHeadImg?.file);
      formData.append("foot_img", branchFootImg?.file);

      console.log(upData, branchHeadImg, branchFootImg, formData, id);

      const response = await axios.put(
        `http://localhost:8888/api/v1/super-admin/updateBranchDetails/${id}`,
        formData,
        {
          headers: {
            "Content-Type": "multipart/form-data",
            Authorization: `Bearer ${token}`,
          },
        }
      );

      console.log(response);
      setBranchHeadImg(null);
      setBranchFootImg(null);
      // getBranchList();
      setShowPopup(false);
      cogoToast.success("branch details updated successfully");
      setUpData({
        name: "",
        address: "",
        contact: "",
      });
      // Clear the file input fields
      if (branchHeadImgRef.current) branchHeadImgRef.current.value = "";
      if (branchFootImgRef.current) branchFootImgRef.current.value = "";
      getBranchList();
    } catch (error) {
      console.log(error);
    }
  };

  const closeUpdatePopup = () => {
    setShowPopup(false);
  };

  const getBranchList = async () => {
    setLoading(true);
    try {
      const response = await axios.get(
        "http://localhost:8888/api/v1/super-admin/getBranch"
      );
      setLoading(false);
      console.log(response.data[0]);
      setBranchList(response.data[0]);
      dispatch(setBranch(response.data));
    } catch (error) {
      setLoading(false);
      console.log(error);
    }
  };

  useEffect(() => {
    getBranchList();
  }, []);

  // console.log(branchList);

  const handleBranchHeadPicture = (e) => {
    const selectedFile = e.target.files[0];
    console.log(selectedFile);
    if (selectedFile) {
      const reader = new FileReader();
      reader.readAsDataURL(selectedFile);
      reader.onloadend = () => {
        const image = new Image();
        image.src = reader.result;
        image.onload = () => {
          if (
            (image.width === 5900 && image.height === 1844) ||
            (image.width === 1920 && image.height === 601)
          ) {
            setBranchHeadImg({
              file: selectedFile,
              imageUrl: reader.result,
            });
            setHeadError("");
          } else {
            setHeadError(
              "Invalid image resolution. Please select an image with resolution 5900×1844 or 1920×601."
            );
            branchHeadImgRef.current.value = ""; // Reset the input field
          }
        };
      };
    }
  };

  console.log(branchHeadImg);

  const handleBranchFootPicture = (e) => {
    const selectedFile = e.target.files[0];
    console.log(selectedFile);
    if (selectedFile) {
      const reader = new FileReader();
      reader.readAsDataURL(selectedFile);
      reader.onloadend = () => {
        const image = new Image();
        image.src = reader.result;
        image.onload = () => {
          if (
            (image.width === 5900 && image.height === 1000) ||
            (image.width === 1920 && image.height === 601)
          ) {
            setBranchFootImg({
              file: selectedFile,
              imageUrl: reader.result,
            });
            setFootError("");
          } else {
            setFootError(
              "Invalid image resolution. Please select an image with resolution 5900×1844 or 1920×601."
            );
            branchFootImgRef.current.value = ""; // Reset the input field
          }
        };
      };
    }
  };

  console.log(branchFootImg);

  return (
    <>
      <Container>
        <Header />
        <div className="main" style={{ paddingTop: "60px" }}>
          <div className="container-fluid">
            <div className="row flex-nowrap ">
              <div className="col-lg-1 col-1 ps-0 position-fixed" id="sidebar">
                <Sider />
              </div>
              {/* for fix sider */}
              <div className="col-md-1"></div>
              {/* for fix sider */}
              <div className="col-lg-11 col-11 ps-0 branch">
                <div className="row d-flex justify-content-between mx-3">
                  <div className="col-12 col-md-12 mt-4">
                    <div className="d-flex justify-content-between">
                      {/* <BranchSelector /> */}
                    </div>

                    {/* pop-up for creating notice */}

                    <div
                      className={`popup-container${showPopup ? " active" : ""}`}
                      style={{ paddingTop: "60px" }}
                    >
                      <div className="popup">
                        <h2>Update Branch Details</h2>
                        <form
                          className="d-flex flex-column"
                          onSubmit={(e) =>
                            updateBranchDetails(e, selectedItem.branch_id)
                          }
                        >
                          <div className="mb-3">
                            <label for="branchName" class="form-label">
                              Branch Name
                            </label>
                            <input
                              type="text"
                              id="branchName"
                              name="name"
                              class="form-control"
                              placeholder={selectedItem.branch_name}
                              value={upData.name}
                              onChange={handleChange}
                              required
                            />
                          </div>

                          <div className="mb-3">
                            <label for="branchAddress" class="form-label">
                              Branch Address
                            </label>
                            <input
                              placeholder={selectedItem.branch_address}
                              id="branchAddress"
                              class="form-control"
                              name="address"
                              value={upData.address}
                              onChange={handleChange}
                              required
                            />
                          </div>

                          <div className="mb-3">
                            <label for="branchContact" class="form-label">
                              Branch Contact
                            </label>
                            <small className="mx-1">
                              (Add contact without country code)
                            </small>
                            <input
                              type="text"
                              id="branchContact"
                              className="form-control"
                              placeholder={selectedItem.branch_contact}
                              name="contact"
                              value={upData.contact}
                              maxLength={10}
                              onChange={handleChange}
                              required
                            />
                          </div>
                          <div className="mb-3">
                            <label
                              htmlFor="accountNumber"
                              className="form-label"
                            >
                              Account Number
                            </label>
                            <input
                              type="number"
                              id="accountNumber"
                              className="form-control"
                              placeholder={selectedItem.account_number}
                              name="account_number"
                              value={upData.account_number}
                              onChange={handleChange}
                              required
                            />
                          </div>

                          <div className="mb-3">
                            <label htmlFor="bankName" className="form-label">
                              Bank Name
                            </label>
                            <input
                              type="text"
                              id="bankName"
                              className="form-control"
                              placeholder={selectedItem.bank_name}
                              name="bank_name"
                              value={upData.bank_name}
                              onChange={handleChange}
                              required
                            />
                          </div>

                          <div className="mb-3">
                            <label htmlFor="upiId" className="form-label">
                              UPI ID
                            </label>
                            <input
                              type="text"
                              id="upiId"
                              className="form-control"
                              placeholder={selectedItem.upi_id}
                              name="upi_id" 
                              value={upData.upi_id}
                              onChange={handleChange}
                              required
                            />
                          </div>

                          <div className="mb-3">
                            <label htmlFor="ifscCode" className="form-label">
                              IFSC Code
                            </label>
                            <input
                              type="text"
                              id="ifscCode"
                              className="form-control"
                              placeholder={selectedItem.ifsc_code}
                              name="ifsc_code"
                              value={upData.ifsc_code}
                              onChange={handleChange}
                              required
                            />
                          </div>

                          <div className="input-container">
                            <label for="headerImage" class="form-label">
                              Upload Header Picture
                            </label>
                            <small className="fw-bold mx-1">
                              (Please select an image with resolution 5900×1844
                              or 1920×601)
                            </small>
                            <input
                              type="file"
                              id="headerImage"
                              class="p-1 w-100 rounded"
                              accept=".pdf, .jpg, .jpeg, .png"
                              name="branchHeadImg"
                              ref={branchHeadImgRef}
                              onChange={handleBranchHeadPicture}
                            />
                            {headError && (
                              <p style={{ color: "red" }}>{headError}</p>
                            )}
                            <img
                              src={
                                branchHeadImg
                                  ? branchHeadImg.imageUrl
                                  : selectedItem.head_img
                              }
                              alt="Header"
                              className="imgData"
                            />
                          </div>

                          <div className="input-container">
                            <label for="footerImage" class="form-label">
                              Upload Footer Picture
                            </label>
                            <small className="fw-bold mx-1">
                              (Please select an image with resolution 5900×1000
                              or 1920×400)
                            </small>
                            <input
                              type="file"
                              id="footerImage"
                              class="p-1 w-100 rounded"
                              accept=".pdf, .jpg, .jpeg, .png"
                              name="branchFootImg"
                              ref={branchFootImgRef}
                              onChange={handleBranchFootPicture}
                            />
                            {footError && (
                              <p style={{ color: "red" }}>{footError}</p>
                            )}
                            <img
                              src={
                                branchFootImg
                                  ? branchFootImg.imageUrl
                                  : selectedItem.foot_img
                              }
                              alt="Footer"
                              className="imgData"
                            />
                          </div>

                          <div className="d-flex justify-content-start">
                            <button
                              type="submit"
                              className="btn btn-success mt-2 text-white shadow"
                            >
                              Update
                            </button>
                            <button
                              type="button"
                              className="btn btn-danger mt-2 mx-2 text-white shadow"
                              onClick={closeUpdatePopup}
                            >
                              Cancel
                            </button>
                          </div>
                        </form>
                      </div>
                    </div>

                    {/* popup for updating notice */}

                    <h2 className="text-center"> Branch List </h2>
                    {loading ? (
                      <>
                        <div className="d-flex justify-content-center w-100">
                          <Lottie
                            options={defaultOptions}
                            height={300}
                            width={400}
                            style={{ background: "transparent" }}
                          ></Lottie>
                        </div>
                      </>
                    ) : (
                      <>
                        <div className="container-fluid mt-3">
                          <div class="table-responsive rounded">
                            <table class="table table-bordered rounded shadow">
                              <thead className="table-head">
                                <tr>
                                  <th
                                    className="table-sno"
                                    style={{ width: "10%" }}
                                  >
                                    Branch ID
                                  </th>
                                  <th
                                    className="table-small"
                                    style={{ width: "20%" }}
                                  >
                                    Branch Name
                                  </th>
                                  <th
                                    className="table-small"
                                    style={{ width: "20%" }}
                                  >
                                    Branch Address
                                  </th>
                                  <th
                                    className="table-small"
                                    style={{ width: "10%" }}
                                  >
                                    Contact Number
                                  </th>
                                  <th
                                    className="table-small"
                                    style={{ width: "10%" }}
                                  >
                                    Header Image
                                  </th>
                                  <th
                                    className="table-small"
                                    style={{ width: "10%" }}
                                  >
                                    Footer Image
                                  </th>
                                  <th
                                    className="table-small"
                                    style={{ width: "10%" }}
                                  >
                                    Edit
                                  </th>
                                  {/* <th
                                className="table-small"
                                style={{ width: "10%" }}
                              >
                                Delete
                              </th> */}
                                </tr>
                              </thead>
                              <tbody>
                                <tr
                                  className="table-row"
                                  key={branchList.branch_id}
                                >
                                  <td
                                    className="table-sno"
                                    style={{ width: "10%" }}
                                  >
                                    {branchList.branch_id}
                                  </td>
                                  <td
                                    className="table-small"
                                    style={{ width: "20%" }}
                                  >
                                    {branchList.branch_name}
                                  </td>
                                  <td
                                    className="table-small"
                                    style={{ width: "20%" }}
                                  >
                                    {branchList.branch_address}
                                  </td>
                                  <td
                                    className="table-small"
                                    style={{ width: "10%" }}
                                  >
                                    {branchList.branch_contact}
                                  </td>
                                  <td
                                    className="table-small"
                                    style={{ width: "10%" }}
                                  >
                                    <div className="smallImg">
                                      <img
                                        src={branchList.head_img}
                                        alt="header"
                                      />
                                    </div>
                                  </td>
                                  <td
                                    className="table-small"
                                    style={{ width: "10%" }}
                                  >
                                    <div className="smallImg">
                                      <img
                                        src={branchList.foot_img}
                                        alt="footer"
                                      />
                                    </div>
                                  </td>
                                  <td
                                    className="table-small"
                                    style={{ width: "10%" }}
                                  >
                                    <button
                                      className="btn btn-warning text-white shadow"
                                      style={{
                                        backgroundColor: "#014cb1",
                                        borderColor: "#014cb1",
                                      }}
                                      onClick={() =>
                                        openUpdatePopup(
                                          branchList.branch_id,
                                          branchList
                                        )
                                      }
                                    >
                                      Edit Details
                                    </button>
                                  </td>
                                </tr>
                              </tbody>
                            </table>
                          </div>
                        </div>
                      </>
                    )}
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </Container>
    </>
  );
};

export default Branches;

const Container = styled.div`
  .popup-container {
    display: none;
    position: fixed;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    width: 80%;
    // height: 80vh;
    // background-color: rgba(0, 0, 0, 0.5);
    align-items: center;
    justify-content: center;
    // padding: 1rem;
    z-index: 9999;
  }

  /* Media queries for different screen sizes */
  @media (max-width: 1024px) {
    .popup-container {
      width: 90%;
      height: auto;
      padding: 1.5rem;
    }
  }

  .popup-container.active {
    display: flex;
  }

  .popup {
    background-color: white;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.5);
    width: 80%;
    height: 80vh;
    top: 50%;
    left: 50%;
    overflow-y: scroll;
    // transform: translate(-50%, -50%);
  }

  .select-style {
    border: none;
    background-color: #22a6b3;
    font-weight: bold;
    color: white;
  }

  th {
    background-color: #004aad;
    color: white;
  }

  .imgData {
    height: 10rem;
    width: 30rem;
  }

  .smallImg {
    img {
      height: 6rem;
      width: auto;
    }
  }
`;
