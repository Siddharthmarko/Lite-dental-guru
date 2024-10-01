import React, { useEffect, useState } from "react";
import { Link, useLocation } from "react-router-dom";
import styled from "styled-components";
import Sider from "../receptionist/components/receptionist/Sider";
import Header from "../receptionist/components/receptionist/Header";
import { FaSearch } from "react-icons/fa";
import BranchSelector from "./BranchSelector";
import axios from "axios";
import cogoToast from "cogo-toast";
import { IoMdArrowRoundBack } from "react-icons/io";
import { useSelector } from "react-redux";
import { TbEdit } from "react-icons/tb";
import { GrAdd } from "react-icons/gr";
import ReactPaginate from "react-paginate";
import Lottie from "react-lottie";
// import animationData from "../../../animation/loading-effect.json";
import { MdDelete } from "react-icons/md";

const TreatmentSetting = () => {
  const location = useLocation();
  const user = useSelector((state) => state.user);
  const token = user.currentUser.token;
  console.log(`User Name: ${user.name}, User ID: ${user.id}`);
  console.log("User State:", user);
  const [showAddTreatments, setShowAddTreatments] = useState(false);
  const [showEditTreatments, setShowEditTreatments] = useState(false);
  const [loading, setLoading] = useState(false);
  const [keyword, setkeyword] = useState("");
  const [treatList, setTreatList] = useState([]);
  const [trID, setTrID] = useState();
  const complaintsPerPage = 7;
  const [currentPage, setCurrentPage] = useState(0);
  const [proceList, setProceList] = useState([]);
  const [treatData, setTreatData] = useState({
    treat_procedure_id: "",
    treat_procedure_name: "",
    treatment_name: "",
    nabh: "",
    non_nabh: "",
    value: "",
    label: "",
  });

  const [upTreatData, setUpTreatData] = useState({
    treat_procedure_id: "",
    treat_procedure_name: "",
    treatment_name: "",
    nabh: "",
    non_nabh: "",
    value: "",
    label: "",
  });

  const handleInputChange = (event) => {
    const { name, value } = event.target;

    setTreatData((prevData) => {
      const updatedData = {
        ...prevData,
        [name]: value,
      };

      if (name === "treatment_name") {
        updatedData.value = value;
        updatedData.label = value;
      }

      return updatedData;
    });
  };

  const handleUpdateInputChange = (event) => {
    const { name, value } = event.target;
    setUpTreatData((prevData) => {
      const updatedData = [...prevData];
      updatedData[0] = {
        ...updatedData[0],
        [name]: value,
      };

      if (name === "treatment_name") {
        updatedData[0].value = value;
        updatedData[0].label = value;
      }
      return updatedData;
    });
  };

  const updateTreatVal = upTreatData[0];
  console.log(updateTreatVal);

  const filterForProcId = () => {
    const matchedProcedure = proceList?.find(
      (item) => item.treat_procedure_name === treatData.treat_procedure_name
    );

    // Only update the state if the ID has changed
    if (
      matchedProcedure &&
      matchedProcedure.treat_procedure_id !== treatData.treat_procedure_id
    ) {
      setTreatData((prevState) => ({
        ...prevState,
        treat_procedure_id: matchedProcedure.treat_procedure_id,
      }));
    }
  };

  useEffect(() => {
    filterForProcId();
  }, [treatData.treat_procedure_name]);

  const updateFilterForProcId = () => {
    const matchedProcedure = proceList?.find(
      (item) =>
        item.treat_procedure_name === upTreatData[0]?.treat_procedure_name
    );

    // Only update the state if the ID has changed
    if (
      matchedProcedure &&
      matchedProcedure.treat_procedure_id !== upTreatData[0]?.treat_procedure_id
    ) {
      setUpTreatData((prevState) => {
        const updatedData = [...prevState];
        updatedData[0] = {
          ...updatedData[0],
          treat_procedure_id: matchedProcedure.treat_procedure_id,
        };
        return updatedData;
      });
    }
  };

  useEffect(() => {
    updateFilterForProcId();
  }, [upTreatData[0]?.treat_procedure_name]);

  console.log(treatData);
  console.log(treatList);

  const openAddTreatmentsPopup = (index, item) => {
    // setSelectedItem(item);
    console.log("open pop up");
    setShowAddTreatments(true);
  };

  const openEditTreatmentsPopup = (id) => {
    console.log(id);
    setTrID(id);
    // setSelectedItem(item);
    console.log("open pop up");
    setShowEditTreatments(true);
  };

  const closeUpdatePopup = () => {
    setShowAddTreatments(false);
    setShowEditTreatments(false);
  };

  const getTreatmentDataViaId = async () => {
    try {
      const { data } = await axios.get(
        `https://dentalguru-lite.vimubds5.a2hosted.com/api/v1/super-admin/getTreatmentViaId/${trID}`,
        {
          headers: {
            "Content-Type": "application/json",
            Authorization: `Bearer ${token}`,
          },
        }
      );
      setUpTreatData(data);
    } catch (error) {
      console.log(error);
    }
  };

  console.log(upTreatData);

  useEffect(() => {
    getTreatmentDataViaId();
  }, [trID]);

  const getProcedure = async () => {
    try {
      const { data } = await axios.get(
        `https://dentalguru-lite.vimubds5.a2hosted.com/api/v1/super-admin/getProcedureList`,
        {
          headers: {
            "Content-Type": "application/json",
            Authorization: `Bearer ${token}`,
          },
        }
      );
      console.log("hre is data", data);
      setProceList(data);
    } catch (error) {
      console.log(error);
    }
  };

  console.log(proceList);

  const addTreatments = async (e) => {
    e.preventDefault();
    try {
      const response = await axios.post(
        "https://dentalguru-lite.vimubds5.a2hosted.com/api/v1/super-admin/addTreatment",
        treatData,
        {
          headers: {
            "Content-Type": "application/json",
            Authorization: `Bearer ${token}`,
          },
        }
      );
      console.log(response);
      cogoToast.success("Treatment Addded Successfully");
      closeUpdatePopup();
      getTreatmentList();
      treatData.treat_procedure_id = "";
      treatData.treat_procedure_name = "";
      treatData.treatment_name = "";
      treatData.treatment_cost = "";
      treatData.treatment_discount = "";
      treatData.value = "";
      treatData.label = "";
    } catch (error) {
      console.log(error);
    }
  };

  const getTreatmentList = async () => {
    setLoading(true);
    try {
      const { data } = await axios.get(
        "https://dentalguru-lite.vimubds5.a2hosted.com/api/v1/super-admin/getTreatmentList",
        {
          headers: {
            "Content-Type": "application/json",
            Authorization: `Bearer ${token}`,
          },
        }
      );
      setLoading(false);
      console.log(data);
      setTreatList(data);
    } catch (error) {
      setLoading(false);
      console.log(error);
    }
  };

  const updateTreatmentDetails = async (e, id) => {
    e.preventDefault();
    try {
      const response = await axios.put(
        `https://dentalguru-lite.vimubds5.a2hosted.com/api/v1/super-admin/updateTreatmentDetails/${id}`,
        updateTreatVal,
        {
          headers: {
            "Content-Type": "application/json",
            Authorization: `Bearer ${token}`,
          },
        }
      );

      console.log(response);
      cogoToast.success("Treatment updated successfully");
      closeUpdatePopup();
      getTreatmentList();
    } catch (error) {
      console.log(error);
    }
  };

  // console.log();

  const deleteTreatment = async (id) => {
    try {
      const isConfirmed = window.confirm("Are you sure you want to delete?");

      if (isConfirmed) {
        const response = await axios.delete(
          `https://dentalguru-lite.vimubds5.a2hosted.com/api/v1/super-admin/deleteTreatment/${id}`,
          {
            headers: {
              "Content-Type": "application/json",
              Authorization: `Bearer ${token}`,
            },
          }
        );
        getTreatmentList();
        cogoToast.success("Treatment deleted successfully");
      }
    } catch (error) {
      console.log(error);
    }
  };

  useEffect(() => {
    getTreatmentList();
    getProcedure();
  }, []);

  //   const defaultOptions = {
  //     loop: true,
  //     autoplay: true,
  //     animationData: animationData,
  //     rendererSettings: {
  //       preserveAspectRatio: "xMidYMid slice",
  //     },
  //   };

  console.log(trID);

  const goBack = () => {
    window.history.go(-1);
  };

  const totalCount = treatList.length;

  console.log(treatList);

  const handleKeywordChange = (e) => {
    setkeyword(e.target.value);
  };

  const trimmedKeyword = keyword.trim().toLowerCase();
  console.log(trimmedKeyword);

  const searchFilter = treatList.filter(
    (lab) =>
      lab.treatment_name.toLowerCase().includes(trimmedKeyword) ||
      lab.treat_procedure_name?.toLowerCase()?.includes(trimmedKeyword)
  );

  console.log(searchFilter);

  const totalPages = Math.ceil(searchFilter.length / complaintsPerPage);

  const filterAppointDataByMonth = () => {
    const startIndex = currentPage * complaintsPerPage;
    const endIndex = startIndex + complaintsPerPage;
    return searchFilter?.slice(startIndex, endIndex);
  };

  const handlePageChange = ({ selected }) => {
    setCurrentPage(selected);
  };

  const displayedAppointments = filterAppointDataByMonth();
  console.log(displayedAppointments);

  return (
    <Container>
      <Header />
      <div className="main" style={{ paddingTop: "70px" }}>
        <div className="container-fluid">
          <div className="row flex-nowrap ">
            <div className="col-lg-1 col-1 p-0 position-fixed" id="sidebar">
              <Sider />
            </div>

            {/* for fixed sidebar */}
            <div className="col-lg-1"></div>
            {/* for fixed sidebar */}

            <div className="col-lg-11 col-11 ps-0">
              <div className="container-fluid mt-3">
                <BranchSelector />
              </div>
              <div className="container-fluid mt-3">
                <button className="btn btn-success" onClick={goBack}>
                  <IoMdArrowRoundBack /> Back
                </button>
                <div className="container-fluid">
                  <div className="row mt-3">
                    {/* <div className="col-1"></div> */}

                    <div className="col-12">
                      <nav class="navbar navbar-expand-lg bg-body-tertiary">
                        <div class="container-fluid d-flex justify-content-center">
                          <h2 className="">Treatment Settings</h2>
                        </div>
                      </nav>
                    </div>
                    <div className="container-fluid">
                      <div className="row mt-5">
                        <div className="col-xxl-10 col-xl-10 col-lg-10 col-md-10 col-sm-12 col-12">
                          <input
                            type="text"
                            placeholder="Search by Treatment Name or treatment procedure"
                            className="inputser"
                            value={keyword}
                            onChange={handleKeywordChange}
                          />
                        </div>
                        <div className="col-xxl-2 col-xl-2 col-lg-2 col-md-2 col-sm-12 col-12">
                          <div className="d-flex justify-content-center align-items-center">
                            <button
                              className="btn btn-info btnback p-3"
                              onClick={() => openAddTreatmentsPopup()}
                            >
                              <GrAdd size={22} /> Add Treatment
                            </button>
                          </div>
                        </div>
                        {/* Add Treatment Comment Out */}
                      </div>
                    </div>

                    <div class="table-sticky rounded">
                      <div className="banner-mid mt-2">
                        <div>
                          <h6 className="text-light">Treatments</h6>
                        </div>
                        <div>
                          <p className="fw-bold text-light">
                            Total Treatments - {totalCount ? totalCount : "0"}
                          </p>
                        </div>
                      </div>
                      {null ? (
                        <Lottie
                          //   options={defaultOptions}
                          height={300}
                          width={400}
                          style={{ background: "transparent" }}
                        ></Lottie>
                      ) : (
                        <>
                          <table class="table table-bordered rounded shadow tableStyle">
                            <thead className="table-head">
                              <tr>
                                <th className="table-sno">Treatment ID</th>
                                <th className="table-small">
                                  Treatment Producer Name
                                </th>
                                <th className="table-small">Treatment Name</th>
                                <th className="table-small">NABH Cost(INR)</th>
                                <th className="table-small">
                                  non-NABH Cost(INR)
                                </th>
                                {/* <th className="table-small">
                                  Maximum Discount To give
                                </th> */}
                                <th className="table-small">Actions</th>
                              </tr>
                            </thead>
                            <tbody>
                              {displayedAppointments?.map((item) => (
                                <>
                                  <tr className="table-row">
                                    <td className="table-sno">
                                      {item.treatment_id}
                                    </td>
                                    <td className="table-small">
                                      {item.treat_procedure_name}
                                    </td>
                                    <td className="table-small">
                                      {item.treatment_name}
                                    </td>
                                    <td className="table-small">{item.nabh}</td>
                                    <td className="table-small">
                                      {item.non_nabh}
                                    </td>
                                    {/* <td className="table-small">
                                      {item.treatment_discount}
                                    </td> */}
                                    <td>
                                      <button
                                        className="btn btn-warning text-light"
                                        style={{
                                          backgroundColor: "#014cb1",
                                          borderColor: "#014cb1",
                                        }}
                                        onClick={() =>
                                          openEditTreatmentsPopup(
                                            item.treatment_id
                                          )
                                        }
                                      >
                                        <TbEdit size={22} />
                                      </button>

                                      <button
                                        type="button"
                                        class="btn btn-danger mx-2"
                                        onClick={() =>
                                          deleteTreatment(item.treatment_id)
                                        }
                                      >
                                        <MdDelete />
                                      </button>
                                    </td>
                                  </tr>
                                  {/* <div
                                      class="modal fade rounded"
                                      id="exampleModal"
                                      tabindex="-1"
                                      aria-labelledby="exampleModalLabel"
                                      aria-hidden="true"
                                    >
                                      <div class="modal-dialog rounded">
                                        <div class="modal-content">
                                          <div class="modal-header">
                                            <h1
                                              class="modal-title fs-5"
                                              id="exampleModalLabel"
                                            >
                                              Are you sure you want to delete
                                              this data
                                            </h1>
                                          </div>

                                          <div class="modal-footer d-flex justify-content-center">
                                            <button
                                              type="button"
                                              class="btn btn-danger"
                                              data-bs-dismiss="modal"
                                              onClick={() =>
                                                deleteTreatment(
                                                  item.treatment_id
                                                )
                                              }
                                            >
                                              Yes
                                            </button>
                                            <button
                                              type="button"
                                              class="btn btn-secondary"
                                              data-bs-dismiss="modal"
                                            >
                                              Close
                                            </button>
                                          </div>
                                        </div>
                                      </div>
                                    </div> */}
                                </>
                              ))}
                            </tbody>
                          </table>

                          <PaginationContainer>
                            <ReactPaginate
                              previousLabel={"previous"}
                              nextLabel={"next"}
                              breakLabel={"..."}
                              pageCount={totalPages}
                              marginPagesDisplayed={2}
                              pageRangeDisplayed={5}
                              onPageChange={handlePageChange}
                              containerClassName={"pagination"}
                              activeClassName={"active"}
                            />
                          </PaginationContainer>
                        </>
                      )}
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        {/* ***************************************************************************************************** */}
        {/* other pop-up */}
        {/* pop-up for adding lab */}
        <div className={`popup-container${showAddTreatments ? " active" : ""}`}>
          <div className="popup">
            <h4 className="text-center">Add Treatment</h4>
            <form
              onSubmit={addTreatments}
              className="d-flex flex-column"
              // onSubmit={handleNoticeSubmit}
            >
              <div className="">
                <div className="row">
                  <div className="col-xxl-6 col-xl-6 col-lg-6 col-md-6 col-sm-12 col-12">
                    <div class="mb-3">
                      <label class="form-label fw-bold">Procedure Name*</label>
                      <select
                        name="treat_procedure_name"
                        class="form-control mt-2 p-2"
                        value={treatData.treat_procedure_name}
                        onChange={handleInputChange}
                        id=""
                        required
                      >
                        <option value="">-select procedure-</option>
                        {proceList?.map((item) => (
                          <option value={item.treat_procedure_name}>
                            {item.treat_procedure_name}
                          </option>
                        ))}
                      </select>
                    </div>
                  </div>
                  <div className="col-xxl-6 col-xl-6 col-lg-6 col-md-6 col-sm-12 col-12">
                    <label class="form-label fw-bold">Treatment Name*</label>
                    <input
                      type="text"
                      placeholder="Add Treatment Name"
                      class="form-control"
                      name="treatment_name"
                      value={treatData.treatment_name}
                      onChange={handleInputChange}
                      required
                    />
                  </div>
                  <div className="col-xxl-6 col-xl-6 col-lg-6 col-md-6 col-sm-12 col-12">
                    <label class="form-label fw-bold">NABH Cost(INR)*</label>
                    <input
                      type="number"
                      placeholder="Add NABH Cost"
                      class="form-control"
                      name="nabh"
                      value={treatData.nabh}
                      onChange={handleInputChange}
                      required
                    />
                  </div>
                  <div className="col-xxl-6 col-xl-6 col-lg-6 col-md-6 col-sm-12 col-12">
                    <label class="form-label fw-bold">
                      non-NABH cost (INR)
                    </label>
                    <input
                      type="number"
                      placeholder="Add non-NABH cost"
                      class="form-control"
                      name="non_nabh"
                      value={treatData.non_nabh}
                      onChange={handleInputChange}
                    />
                  </div>
                  {/* <div className="col-xxl-6 col-xl-6 col-lg-6 col-md-6 col-sm-12 col-12">
                    <label class="form-label fw-bold">Value</label>
                    <input
                      type="text"
                      placeholder="Add Value"
                      class="form-control"
                      name="value"
                      value={treatData.value}
                      onChange={handleInputChange}
                    />
                  </div>
                  <div className="col-xxl-6 col-xl-6 col-lg-6 col-md-6 col-sm-12 col-12">
                    <label class="form-label fw-bold">Label</label>
                    <input
                      type="text"
                      placeholder="Add Value"
                      class="form-control"
                      name="label"
                      value={treatData.label}
                      onChange={handleInputChange}
                    />
                  </div> */}
                </div>
              </div>

              <div className="d-flex justify-content-left">
                <button
                  type="submit"
                  className="btn btn-success mt-2 text-white"
                  style={{
                    backgroundColor: "#014cb1",
                    borderColor: "#014cb1",
                  }}
                >
                  Save
                </button>
                <button
                  type="button"
                  className="btn btn-danger mt-2 mx-2"
                  onClick={closeUpdatePopup}
                >
                  Cancel
                </button>
              </div>
            </form>
          </div>
        </div>

        {/* pop-up for adding lab */}
        {/* ************************************************************************************* */}

        {/* ***************************************************************************************************** */}
        {/* other pop-up */}
        {/* pop-up for adding lab */}
        <div
          className={`popup-container${showEditTreatments ? " active" : ""}`}
        >
          <div className="popup">
            <h4 className="text-center mb-2">Edit Treatment Details</h4>
            <hr />
            <form
              className="d-flex flex-column"
              onSubmit={(e) => updateTreatmentDetails(e, trID)}
            >
              <div className="">
                <div className="row">
                  <div className="col-xxl-6 col-xl-6 col-lg-6 col-md-6 col-sm-12 col-12">
                    <div class="mb-3">
                      <label class="form-label fw-bold">Procedure Name</label>
                      <select
                        name="treat_procedure_name"
                        class="form-control mt-2 p-2"
                        value={updateTreatVal?.treat_procedure_name}
                        onChange={handleUpdateInputChange}
                        id=""
                        required
                      >
                        <option value="">-select procedure-</option>
                        {proceList?.map((item) => (
                          <option value={item.treat_procedure_name}>
                            {item.treat_procedure_name}
                          </option>
                        ))}
                      </select>
                    </div>
                  </div>
                  <div className="col-xxl-6 col-xl-6 col-lg-6 col-md-6 col-sm-12 col-12">
                    <label class="form-label fw-bold">Treatment Name</label>
                    <input
                      type="text"
                      placeholder="Add Treatment Name"
                      class="form-control"
                      name="treatment_name"
                      value={updateTreatVal?.treatment_name}
                      onChange={handleUpdateInputChange}
                      required
                    />
                  </div>
                  <div className="col-xxl-6 col-xl-6 col-lg-6 col-md-6 col-sm-12 col-12">
                    <label class="form-label fw-bold">NABH Cost (INR)</label>
                    <input
                      type="number"
                      placeholder="Add NABH Cost"
                      class="form-control"
                      name="nabh"
                      value={updateTreatVal?.nabh}
                      onChange={handleUpdateInputChange}
                      required
                    />
                  </div>
                  <div className="col-xxl-6 col-xl-6 col-lg-6 col-md-6 col-sm-12 col-12">
                    <label class="form-label fw-bold">
                      non-NABH Cost (INR)
                    </label>
                    <input
                      type="number"
                      placeholder="Add non-NABH cost"
                      class="form-control"
                      name="non_nabh"
                      value={updateTreatVal?.non_nabh}
                      onChange={handleUpdateInputChange}
                    />
                  </div>
                  {/* <div className="col-xxl-6 col-xl-6 col-lg-6 col-md-6 col-sm-12 col-12">
                    <label class="form-label fw-bold">Value</label>
                    <input
                      type="text"
                      placeholder="Add Value"
                      class="form-control"
                      name="value"
                      value={updateTreatVal?.value}
                      onChange={handleUpdateInputChange}
                    />
                  </div>
                  <div className="col-xxl-6 col-xl-6 col-lg-6 col-md-6 col-sm-12 col-12">
                    <label class="form-label fw-bold">Label</label>
                    <input
                      type="text"
                      placeholder="Add Value"
                      class="form-control"
                      name="label"
                      value={updateTreatVal?.label}
                      onChange={handleUpdateInputChange}
                    />
                  </div> */}
                </div>
              </div>

              <div className="d-flex justify-content-left">
                <button
                  type="submit"
                  className="btn btn-success mt-2 text-white"
                  style={{
                    backgroundColor: "#014cb1",
                    borderColor: "#014cb1",
                  }}
                >
                  Save
                </button>
                <button
                  type="button"
                  className="btn btn-danger mt-2 mx-2"
                  onClick={closeUpdatePopup}
                >
                  Cancel
                </button>
              </div>
            </form>
          </div>
        </div>

        {/* pop-up for adding lab */}
        {/* ************************************************************************************* */}
      </div>
    </Container>
  );
};

export default TreatmentSetting;
const Container = styled.div`
  .inputser {
    border-radius: 1.5rem;
    padding: 0.5rem;
    width: 50%;
  }

  input::placeholder {
    color: #aaa;
    opacity: 1; /* Ensure placeholder is visible */
    font-size: 1.2rem;
    transition: color 0.3s ease;
  }

  input:focus::placeholder {
    color: transparent; /* Hide placeholder on focus */
  }

  input {
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
    transition: border-color 0.3s ease;
  }

  input:focus {
    border-color: #007bff; /* Change border color on focus */
  }

  .navlink.active {
    background-color: red;
    color: white;
    border-radius: 1rem;
  }

  .banner-mid {
    background-color: #008080;
    padding: 1rem;
    display: flex;
    justify-content: space-between;
    align-items: center;
  }

  .popup-container {
    display: none;
    position: fixed;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background-color: rgba(0, 0, 0, 0.5);
    align-items: center;
    justify-content: center;
  }

  .popup-container.active {
    display: flex;
    background-color: #00000075;
  }

  .popup {
    background-color: white;
    padding: 20px;
    width: 80%;
    border-radius: 8px;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.2);
  }

  .btnback {
    background: #004aad;
    color: white;
    width: 100%;
    &:hover {
      background: #000;
    }
  }
  #sidebar {
    width: 5.04rem;
    height: 79rem;
    background-color: #008080;
    @media screen and (max-width: 768px) {
      width: 3rem;
      height: 212rem;
    }
    @media screen and (min-width: 768px) and (max-width: 1020px) {
      width: 5rem;
      height: 151rem;
    }
    @media screen and (min-width: 1020px) and (max-width: 1600px) {
      height: 62rem;
    }
  }
`;
const PaginationContainer = styled.div`
  .pagination {
    display: flex;
    justify-content: center;
    padding: 10px;
    list-style: none;
    border-radius: 5px;
  }

  .pagination li {
    margin: 0 5px;
  }

  .pagination li a {
    display: block;
    padding: 8px 16px;
    border: 1px solid #e6ecf1;
    color: #007bff;
    cursor: pointer;
    /* background-color: #004aad0a; */
    text-decoration: none;
    border-radius: 5px;
    box-shadow: 0px 0px 1px #000;
  }

  .pagination li.active a {
    background-color: #004aad;
    color: white;
    border: 1px solid #004aad;
    border-radius: 5px;
  }

  .pagination li.disabled a {
    color: white;
    cursor: not-allowed;
    border-radius: 5px;
    background-color: #3a4e69;
    border: 1px solid #3a4e69;
  }

  .pagination li a:hover:not(.active) {
    background-color: #004aad;
    color: white;
    border-radius: 5px;
    border: 1px solid #004aad;
  }

  hr {
    color: #dbd4d4;
    box-shadow: 0px 4px 3px black;
  }
  body {
    padding: 0;
  }
`;
