import React, { useEffect, useState, useRef } from "react";
import styled from "styled-components";
import Header from "../receptionist/components/receptionist/Header";
import Sider from "../receptionist/components/receptionist/Sider";
// import BranchSelector from "./BranchSelector";
import { useDispatch, useSelector } from "react-redux";
import axios from "axios";
import cogoToast from "cogo-toast";
import { Link, useNavigate } from "react-router-dom";
import Lottie from "react-lottie";
import animationData from "../../animation/loading-effect.json";
import { IoPersonAdd } from "react-icons/io5";
import { IoMdArrowRoundBack } from "react-icons/io";

const ManageStaff = () => {
  const [showAddEmployee, setShowAddEmployee] = useState(false);
  const [showEditEmployee, setShowEditEmployee] = useState(false);
  const navigate = useNavigate();
  const [loading, setLoading] = useState(false);
  const dispatch = useDispatch();
  const fileinput = useRef(null);
  const user = useSelector((state) => state.user);
  const token = user.currentUser.token;
  console.log(`User Name: ${user.currentUser.name}, User ID: ${user.currentUser.id}`)
  console.log("User State:", user);
  const branch_name = useSelector((state) => state.user.currentUser.branch_name);
  console.log(`User Name: ${branch_name}`);
  const [doctorList, setDoctorList] = useState([]);
  const [keyword, setkeyword] = useState("");
  const [empProfilePicture, setEmpProfilePicture] = useState(null);
  const [error, setError] = useState(false);
  const [morningError, setMorningError] = useState("");

  const [branchDetails, setBranchDetails] = useState([]);
  const [inEmpData, setInEmpData] = useState({
    branch: "",
    empName: "",
    empMobile: "",
    empGender: "",
    empEmail: "",
    empDesignation: "",
    empSalary: "",
    empAddress: "",
    status: "",
    morningShiftStartTime: "",
    morningShiftEndTime: "",
    eveningShiftStartTime: "",
    eveningShiftEndTime: "",
    allDayShiftStartTime: "",
    allDayShiftEndTime: "",
    working_days: "",
    password: "",
    empRole: [],
    availability: "",
    type_of: "",
    experience: "",
    language: "",
    speciality: "",
  });

  const getBranchData = async () => {
    try {
      const { data } = await axios.get(
        "https://dentalguru-lite.vimubds5.a2hosted.com/api/v1/super-admin/getBranch"
      );
      setBranchDetails(data);
    } catch (error) {
      console.log(error);
    }
  };

  console.log(branchDetails);

  const handleEmpProfilePicture = (e) => {
    const selectedFile = e.target.files[0];
    console.log(selectedFile);

    if (selectedFile) {
      const allowedSizes = [
        { width: 2286, height: 2858 },
        { width: 1920, height: 2400 },
        { width: 1280, height: 1600 },
        { width: 512, height: 640 },
      ];

      const reader = new FileReader();
      reader.readAsDataURL(selectedFile);
      reader.onloadend = () => {
        const image = new Image();
        image.src = reader.result;

        image.onload = () => {
          const isValidSize = allowedSizes.some(
            (size) => size.width === image.width && size.height === image.height
          );

          if (isValidSize) {
            setEmpProfilePicture({
              file: selectedFile,
              imageUrl: reader.result,
            });
          } else {
            alert(
              `Invalid image size (${image.width}x${image.height}). Allowed sizes are: 2286×2858, 1920×2400, 1280×1600, 512×640.`
            );
            // Reset the file input
            e.target.value = "";
          }
        };
      };
    }
  };

  console.log(empProfilePicture);
  console.log(inEmpData);

  const handleInputChange = (event) => {
    const { name, value, type, checked } = event.target;

    if (type === "checkbox") {
      setInEmpData((prevEmpData) => ({
        ...prevEmpData,
        [name]: checked
          ? [...prevEmpData[name], value]
          : prevEmpData[name].filter((item) => item !== value),
      }));
    } else if (name === "empMobile") {
      // Specific handling for mobile number field
      if (/^\d*$/.test(value) && value.length <= 10) {
        setInEmpData((prevEmpData) => ({
          ...prevEmpData,
          [name]: value,
        }));
      }
    } else {
      setInEmpData((prevEmpData) => ({
        ...prevEmpData,
        [name]: value,
      }));
    }

    validateShiftTimes(name, value);
  };

  const validateShiftTimes = (name, value) => {
    let startTime = inEmpData.morningShiftStartTime;
    let endTime = inEmpData.morningShiftEndTime;
    let eveningStartTime = inEmpData.eveningShiftStartTime;
    let eveningEndTime = inEmpData.eveningShiftEndTime;

    if (name === "morningShiftStartTime") {
      startTime = value;
    } else if (name === "morningShiftEndTime") {
      endTime = value;
    } else if (name === "eveningShiftStartTime") {
      eveningStartTime = value;
    } else if (name === "eveningShiftEndTime") {
      eveningEndTime = value;
    }

    const startHour = parseInt(startTime.split(":")[0], 10);
    const endHour = parseInt(endTime.split(":")[0], 10);
    const eveningStartHour = parseInt(eveningStartTime.split(":")[0], 10);
    const eveningEndHour = parseInt(eveningEndTime.split(":")[0], 10);

    if (startHour >= 12) {
      setMorningError("Morning shift start time should be in the AM.");
      alert("Morning shift start time should be in the AM.");
      setInEmpData((prevEmpData) => ({
        ...prevEmpData,
        morningShiftStartTime: "",
      }));
    } else if (
      endHour > 14 ||
      (endHour === 14 && parseInt(endTime.split(":")[1], 10) > 0)
    ) {
      setMorningError("Morning shift end time cannot be later than 2 PM.");
      alert("Morning shift end time cannot be later than 2 PM.");
      setInEmpData((prevEmpData) => ({
        ...prevEmpData,
        morningShiftEndTime: "",
      }));
    } else if (
      eveningStartHour < 14 ||
      (eveningStartHour === 14 &&
        parseInt(eveningStartTime.split(":")[1], 10) === 0)
    ) {
      setError("Evening shift start time should be after 2 PM.");
      alert("Evening shift start time should be after 2 PM.");
      setInEmpData((prevEmpData) => ({
        ...prevEmpData,
        eveningShiftStartTime: "",
        eveningShiftEndTime: "",
      }));
    } else {
      setMorningError("");
    }
  };

  const handleCheckChange = (event) => {
    const { name, checked } = event.target;

    setInEmpData((prevEmpData) => ({
      ...prevEmpData,
      empRole: checked
        ? [...prevEmpData.empRole, name]
        : prevEmpData.empRole.filter((role) => role !== name),
    }));
  };

  const errorShift = () => {
    const {
      morningShiftStartTime,
      morningShiftEndTime,
      allDayShiftStartTime,
      allDayShiftEndTime,
      eveningShiftStartTime,
      eveningShiftEndTime,
    } = inEmpData;

    // Assuming times are in 'HH:MM' format, convert them to Date objects for comparison
    const [morningStartHour, morningStartMinute] = morningShiftStartTime
      .split(":")
      .map(Number);
    const [morningEndHour, morningEndMinute] = morningShiftEndTime
      .split(":")
      .map(Number);
    const [allDayStartHour, allDayStartMinute] = allDayShiftStartTime
      .split(":")
      .map(Number);
    const [allDayEndHour, allDayEndMinute] = allDayShiftEndTime
      .split(":")
      .map(Number);
    const [eveningStartHour, eveningStartMinute] = eveningShiftStartTime
      .split(":")
      .map(Number);
    const [eveningEndHour, eveningEndMinute] = eveningShiftEndTime
      .split(":")
      .map(Number);

    const morningStart = new Date(
      0,
      0,
      0,
      morningStartHour,
      morningStartMinute
    );
    const morningEnd = new Date(0, 0, 0, morningEndHour, morningEndMinute);
    const allDayStart = new Date(0, 0, 0, allDayStartHour, allDayStartMinute);
    const allDayEnd = new Date(0, 0, 0, allDayEndHour, allDayEndMinute);
    const eveningStart = new Date(
      0,
      0,
      0,
      eveningStartHour,
      eveningStartMinute
    );
    const eveningEnd = new Date(0, 0, 0, eveningEndHour, eveningEndMinute);

    if (
      morningStart >= morningEnd ||
      allDayStart >= allDayEnd ||
      eveningStart >= eveningEnd
    ) {
      setError(true);
      alert("Shift start time cannot be greater than or equal to end time");
      setInEmpData((prevEmpData) => ({
        ...prevEmpData,
        morningShiftStartTime: "",
        morningShiftEndTime: "",
        allDayShiftStartTime: "",
        allDayShiftEndTime: "",
        eveningShiftStartTime: "",
        eveningShiftEndTime: "",
      }));
    } else {
      setError(false);
    }
  };

  useEffect(() => {
    errorShift();
  }, [
    inEmpData.morningShiftStartTime,
    inEmpData.morningShiftEndTime,
    inEmpData.allDayShiftStartTime,
    inEmpData.allDayShiftEndTime,
    inEmpData.eveningShiftStartTime,
    inEmpData.eveningShiftEndTime,
  ]);

  const getDocDetailsList = async () => {
    setLoading(true);
    try {
      const { data } = await axios.get(
        `https://dentalguru-lite.vimubds5.a2hosted.com/api/v1/super-admin/getEmployeeDataByBranch/${branch_name}`,
        {
          headers: {
            "Content-Type": "application/json",
            Authorization: `Bearer ${token}`,
          },
        }
      );
      setLoading(false);
      console.log(data);
      setDoctorList(data);
    } catch (error) {
      setLoading(false);
      console.log(error);
    }
  };

  useEffect(() => {
    getDocDetailsList();
  }, []);

  const defaultOptions = {
    loop: true,
    autoplay: true,
    animationData: animationData,
    rendererSettings: {
      preserveAspectRatio: "xMidYMid slice",
    },
  };

  useEffect(() => {
    getDocDetailsList();
    getBranchData();
  }, [branch_name]);

  console.log(doctorList);

  const notApprovedList = doctorList.filter((item) => {
    return item.employee_status !== "Approved";
  });

  console.log(notApprovedList);

  const openAddEmployeePopup = (index, item) => {
    // setSelectedItem(item);
    console.log("open pop up");
    setShowAddEmployee(true);
  };

  const openEditEmployeePopup = (index, item) => {
    // setSelectedItem(item);
    console.log("open pop up");
    setShowEditEmployee(true);
  };

  const closeUpdatePopup = () => {
    setInEmpData({
      branch: "",
      empName: "",
      empMobile: "",
      empGender: "",
      empEmail: "",
      empDesignation: "",
      empSalary: "",
      empAddress: "",
      status: "",
      morningShiftStartTime: "",
      morningShiftEndTime: "",
      eveningShiftStartTime: "",
      eveningShiftEndTime: "",
      allDayShiftStartTime: "",
      allDayShiftEndTime: "",
      working_days: "",
      password: "",
      empRole: [],
      availability: "",
      type_of: "",
      experience: "",
      language: "",
      speciality: "",
    });
    setShowAddEmployee(false);
    setShowEditEmployee(false);
    fileinput.current.value = "";
    setEmpProfilePicture(null);
  };

  const enrollEmployeeDetails = async (e) => {
    e.preventDefault();
    try {
      const formData = new FormData();

      // Append user.data fields to formData
      for (const key in inEmpData) {
        formData.append(key, inEmpData[key]);
      }
      formData.append("empProfilePicture", empProfilePicture.file);
      console.log(inEmpData, empProfilePicture);

      const { data } = await axios.post(
        "https://dentalguru-lite.vimubds5.a2hosted.com/api/v1/super-admin/enroll-employee",
        formData,
        {
          headers: {
            "Content-Type": "multipart/form-data",
            Authorization: `Bearer ${token}`,
          },
        }
      );

      cogoToast.success("Registration successful!");
      addEmployeeTimeline();
      getDocDetailsList();
      setInEmpData({
        branch: "",
        empName: "",
        empMobile: "",
        empGender: "",
        empEmail: "",
        empDesignation: "",
        empSalary: "",
        empAddress: "",
        status: "",
        morningShiftStartTime: "",
        morningShiftEndTime: "",
        eveningShiftStartTime: "",
        eveningShiftEndTime: "",
        allDayShiftStartTime: "",
        allDayShiftEndTime: "",
        working_days: "",
        password: "",
        empRole: [],
        availability: "",
        type_of: "",
        experience: "",
        language: "",
        speciality: "",
      });
      fileinput.current.value = "";
      setEmpProfilePicture(null);
      closeUpdatePopup();
    } catch (error) {
      console.log(error);
      // cogoToast.error(error?.response?.data?.error || "Something went wrong");
      alert(error?.response?.data?.error || "Something went wrong");
    }
  };

  console.log(new Date().toISOString().split("T")[0]);

  const addEmployeeTimeline = async () => {
    try {
      const response = await axios.post(
        `https://dentalguru-lite.vimubds5.a2hosted.com/api/v1/super-admin/addSuperAdminNotify`,
        {
          branch_name: branch_name,
          title: "New Employee Registered",
          event_msg: `Please Check Manage Staff List ${inEmpData.empName}`,
          open: "/manage-staff",
          status: "unread",
          time: new Date().toISOString().split("T")[0],
        },
        {
          headers: {
            "Content-Type": "application/json",
            Authorization: `Bearer ${token}`,
          },
        }
      );
    } catch (error) {
      console.log(`error employee TimeLine ${error}`);
    }
  };

  console.log(inEmpData);

  // const handleKeywordChange = (e) => {
  //   setkeyword(e.target.value);
  // };

  const trimmedKeyword = keyword.trim().toLowerCase();
  console.log(trimmedKeyword);

  // const searchFilter = doctorList.filter(
  //   (lab) =>
  //     lab.patient_name.toLowerCase().includes(trimmedKeyword) ||
  //     lab.uhid.toLowerCase().includes(trimmedKeyword) ||
  //     lab.mobileno.includes(trimmedKeyword)
  // );

  const editEmployeeData = async (eid) => {
    setLoading(true);
    try {
      const response = await axios.put(
        `https://dentalguru-lite.vimubds5.a2hosted.com/api/v1/super-admin/editEmployeeDetails/${branch_name}/${eid}`,
        { status: "Approved" },
        {
          headers: {
            "Content-Type": "multipart/form-data",
            Authorization: `Bearer ${token}`,
          },
        }
      );
      console.log(response);
      cogoToast.success("Employee Approved successfuly");
      setLoading(false);
      getDocDetailsList();
    } catch (error) {
      console.log(error);
      setLoading(false);
    }
  };

  const roles = () => {
    if (inEmpData.empDesignation === "doctor") {
      return [
        "admin",
        "receptionist",
        "consultant",
        "accountant",
        "lab attendant",
        "doctor",
      ];
    } else {
      return [
        "admin",
        "receptionist",
        "consultant",
        "accountant",
        "lab attendant",
      ];
    }
  };

  useEffect(() => {
    roles();
  }, [inEmpData.empDesignation]);

  const rolesVal = roles();
  console.log(rolesVal);

  return (
    <>
      <Container>
        <Header />
        <div className="main">
          <div className="container-fluid">
            <div className="row flex-nowrap ">
              <div className="col-lg-1 col-1 p-0">
                <Sider />
              </div>
              <div className="col-lg-11 col-11 ps-0">
              <div className="container-fluid mt-3">
                  <div className="d-flex justify-content-between">
                    {/* <BranchSelector /> */}
                  </div>
                </div>
                <button className="btn btn-success" onClick={() => window.history.go(-1) }>
                  <IoMdArrowRoundBack /> Back
                </button>
                {notApprovedList.length > 0 && (
                  <>
                    <div className="container mt-4">
                      <h2 className="text-center pb-2">Approve Employees</h2>
                      <div class="table-responsive">
                        <table class="table table-bordered">
                          <thead className="table-head">
                            <tr>
                              <th className="thead sticky">Emp ID</th>
                              <th className="thead sticky">Name</th>
                              <th className="thead sticky">Designation</th>
                              <th className="thead sticky">Role</th>
                              <th className="thead sticky">Status</th>

                              <th
                                className="sticky"
                                style={{ minWidth: "10rem" }}
                              >
                                Actions
                              </th>
                            </tr>
                          </thead>
                          <tbody>
                            {notApprovedList
                              ?.filter((val) => {
                                if (keyword === "") {
                                  return true;
                                } else if (
                                  val.employee_name
                                    .toLowerCase()
                                    .includes(trimmedKeyword) ||
                                  val.employee_designation
                                    .toLowerCase()
                                    .includes(trimmedKeyword) ||
                                  val.employee_mobile.includes(
                                    trimmedKeyword
                                  ) ||
                                  val.employee_ID
                                    .toLowerCase()
                                    .includes(trimmedKeyword)
                                ) {
                                  return val;
                                }
                              })
                              .map((item) => (
                                <>
                                  <tr className="table-row">
                                    <td className="thead">
                                      {item.employee_ID}
                                    </td>
                                    <td className="thead">
                                      {item.employee_name}
                                    </td>

                                    <td className="thead">
                                      {item.employee_designation}
                                    </td>
                                    <td className="thead">
                                      {item.employee_role}
                                    </td>

                                    <td className="thead">
                                      {item.employee_status}
                                    </td>

                                    <td
                                      className=""
                                      style={{ minWidth: "13rem" }}
                                    >
                                      <button
                                        className="btn btn-warning text-white shadow"
                                        style={{
                                          backgroundColor: "#004aad",
                                          borderColor: "#004aad",
                                        }}
                                        onClick={() =>
                                          editEmployeeData(item.employee_ID)
                                        }
                                      >
                                        Approve
                                      </button>
                                    </td>
                                  </tr>
                                </>
                              ))}
                          </tbody>
                        </table>
                      </div>
                    </div>
                  </>
                )}

                <div className="container-fluid mt-3">
                  <h2 className="text-center">Manage Employee</h2>
                  <div className="d-flex justify-content-between align-items-center">
                    <div className="w-50">
                      {/* <label>Employee Name :</label> */}
                      <input
                        type="text"
                        placeholder="Search employee name or mobile number or designation or employee ID"
                        className="input"
                        value={keyword}
                        onChange={(e) =>
                          setkeyword(e.target.value.toLowerCase())
                        }
                      />
                    </div>
                    <div>
                      <button
                        className="btn btn-success text-white shadow"
                        style={{
                          backgroundColor: "#014cb1",
                          borderColor: "#014cb1",
                        }}
                        onClick={() => openAddEmployeePopup()}
                      >
                        <IoPersonAdd /> {"  "}Add Employee
                      </button>
                    </div>
                  </div>
                  <div>
                    <h4>Total Employees : {doctorList.length}</h4>
                  </div>

                  {loading ? (
                    <Lottie
                      options={defaultOptions}
                      height={300}
                      width={400}
                      style={{ background: "transparent" }}
                    ></Lottie>
                  ) : (
                    <>
                      <div class="table-responsive">
                        <table class="table table-bordered">
                          <thead className="table-head">
                            <tr>
                              <th className="thead sticky">Emp ID</th>
                              <th className="thead sticky">Name</th>
                              <th className="thead sticky">Mobile</th>
                              <th className="thead sticky">Email</th>
                              <th className="thead sticky">Designation</th>
                              <th className="thead sticky">Role</th>
                              <th className="thead sticky">Salary</th>
                              <th className="thead sticky">Address</th>
                              <th className="thead sticky">Status</th>
                              <th className="sticky">Profile Picture</th>
                              <th
                                className="sticky"
                                style={{ minWidth: "10rem" }}
                              >
                                Actions
                              </th>
                            </tr>
                          </thead>
                          <tbody>
                            {doctorList
                              ?.filter((val) => {
                                if (keyword === "") {
                                  return true;
                                } else if (
                                  val.employee_name
                                    .toLowerCase()
                                    .includes(trimmedKeyword) ||
                                  val.employee_designation
                                    .toLowerCase()
                                    .includes(trimmedKeyword) ||
                                  val.employee_mobile.includes(
                                    trimmedKeyword
                                  ) ||
                                  val.employee_ID
                                    .toLowerCase()
                                    .includes(trimmedKeyword)
                                ) {
                                  return val;
                                }
                              })
                              .map((item) => (
                                <>
                                  <tr className="table-row">
                                    <td className="thead">
                                      {item.employee_ID}
                                    </td>
                                    <td className="thead">
                                      {item.employee_name}
                                    </td>
                                    <td className="thead">
                                      {item.employee_mobile}
                                    </td>

                                    <td className="thead">
                                      {item.employee_email}
                                    </td>
                                    <td className="thead">
                                      {item.employee_designation}
                                    </td>
                                    <td className="thead">
                                      {item.employee_role}
                                    </td>
                                    <td className="thead">{item.salary}</td>
                                    <td className="thead">{item.address}</td>
                                    <td className="thead">
                                      {item.employee_status}
                                    </td>
                                    <td>
                                      <div className="smallImg">
                                        <img
                                          src={item.employee_picture}
                                          alt="profile"
                                        />
                                      </div>
                                    </td>
                                    <td
                                      className=""
                                      style={{ minWidth: "13rem" }}
                                    >
                                      <Link
                                        to={`/employee-profile/${item.employee_ID}`}
                                      >
                                        <button
                                          className="btn btn-warning text-white shadow"
                                          style={{
                                            backgroundColor: "#014cb1",
                                            borderColor: "#014cb1",
                                          }}
                                        >
                                          Edit/View
                                        </button>
                                      </Link>

                                      {/* <button className="btn btn-danger mx-1">
                                    Delete
                                  </button> */}
                                    </td>
                                  </tr>
                                </>
                              ))}
                          </tbody>
                        </table>
                      </div>
                    </>
                  )}
                </div>
              </div>
            </div>
          </div>
          {/* ***************************************************************************************************** */}
          {/* other pop-up */}
          {/* pop-up for adding lab */}
          <div className={`popup-container${showAddEmployee ? " active" : ""}`}>
            <div className="popup">
              <h4 className="text-center">Add Employee</h4>
              <hr />
              <form
                className="d-flex flex-column"
                onSubmit={enrollEmployeeDetails}
              >
                <div className="container">
                  <div className="row">
                    <div className="col-xxl-3 col-xl-3 col-lg-3 col-md-3 col-sm-12 col-12">
                      <div class="mb-3">
                        <label
                          for="exampleFormControlInput1"
                          class="form-label"
                        >
                          Branch
                        </label>
                        <select
                          name="branch"
                          id=""
                          class="form-control"
                          required
                          value={inEmpData.branch}
                          onChange={handleInputChange}
                        >
                          <option value="">-select-</option>
                          {branchDetails?.map((item) => (
                            <option value={item.branch_name}>
                              {item.branch_name}
                            </option>
                          ))}
                        </select>
                        {/* <input
                          type="text"
                          class="form-control"
                          id="exampleFormControlInput1"
                          placeholder="Employee Name"
                          name="empName"
                          required
                          value={inEmpData.empName}
                          onChange={handleInputChange}
                        /> */}
                      </div>
                    </div>
                    <div className="col-xxl-3 col-xl-3 col-lg-3 col-md-3 col-sm-12 col-12">
                      <div class="mb-3">
                        <label
                          for="exampleFormControlInput1"
                          class="form-label"
                        >
                          Employee Name
                        </label>
                        <input
                          type="text"
                          class="form-control"
                          id="exampleFormControlInput1"
                          placeholder="Employee Name"
                          name="empName"
                          required
                          value={inEmpData.empName}
                          onChange={handleInputChange}
                        />
                      </div>
                    </div>
                    <div className="col-xxl-3 col-xl-3 col-lg-3 col-md-3 col-sm-12 col-12">
                      <div class="mb-3">
                        <label
                          for="exampleFormControlInput1"
                          class="form-label"
                        >
                          Employee Mobile
                        </label>
                        <input
                          type="text"
                          class="form-control"
                          id="exampleFormControlInput1"
                          placeholder="Employee Mobile"
                          name="empMobile"
                          maxLength={10}
                          minLength={10}
                          required
                          value={inEmpData.empMobile}
                          onChange={handleInputChange}
                        />
                      </div>
                    </div>
                    <div className="col-xxl-3 col-xl-3 col-lg-3 col-md-3 col-sm-12 col-12">
                      <div class="mb-3">
                        <label
                          for="exampleFormControlInput1"
                          class="form-label"
                        >
                          Employee Gender
                        </label>
                        <select
                          name="empGender"
                          id=""
                          required
                          class="form-control w-100"
                          value={inEmpData.empGender}
                          onChange={handleInputChange}
                        >
                          <option value="">select-option</option>
                          <option value="male">Male</option>
                          <option value="female">Female</option>
                          <option value="other">Other</option>
                        </select>
                      </div>
                    </div>
                    <div className="col-xxl-3 col-xl-3 col-lg-3 col-md-3 col-sm-12 col-12">
                      <div class="mb-3">
                        <label
                          for="exampleFormControlInput1"
                          class="form-label"
                        >
                          Employee Email
                        </label>
                        <input
                          type="email"
                          class="form-control"
                          id="exampleFormControlInput1"
                          placeholder="Employee Email"
                          required
                          name="empEmail"
                          value={inEmpData.empEmail}
                          onChange={handleInputChange}
                        />
                      </div>
                    </div>
                    <div className="col-xxl-3 col-xl-3 col-lg-3 col-md-3 col-sm-12 col-12">
                      <div class="mb-3">
                        <label
                          for="exampleFormControlInput1"
                          class="form-label"
                        >
                          Employee Designation
                        </label>
                        <select
                          name="empDesignation"
                          id=""
                          class="form-select"
                          required
                          aria-label="Default select example"
                          value={inEmpData.empDesignation}
                          onChange={handleInputChange}
                        >
                          <option value="">select-designation</option>
                          <option value="admin">Admin</option>
                          <option value="receptionist">Receptionist</option>
                          <option value="consultant">Consultant</option>
                          <option value="accountant">Accountant</option>
                          <option value="helper">Helper</option>
                          <option value="lab attendant">Lab Attendent</option>
                          <option value="doctor">Doctor</option>
                        </select>
                      </div>
                    </div>
                    <div className="col-xxl-3 col-xl-3 col-lg-3 col-md-3 col-sm-12 col-12">
                      <div class="mb-3">
                        <label
                          for="exampleFormControlInput1"
                          class="form-label"
                        >
                          Employee Salary
                        </label>
                        <input
                          type="text"
                          class="form-control"
                          id="exampleFormControlInput1"
                          required
                          placeholder="Employee salary"
                          name="empSalary"
                          value={inEmpData.empSalary}
                          onChange={handleInputChange}
                        />
                      </div>
                    </div>
                    <div className="col-xxl-3 col-xl-3 col-lg-3 col-md-3 col-sm-12 col-12">
                      <div class="mb-3">
                        <label
                          for="exampleFormControlInput1"
                          class="form-label"
                        >
                          Employee Address
                        </label>
                        <input
                          type="text"
                          class="form-control"
                          id="exampleFormControlInput1"
                          placeholder="Employee Address"
                          required
                          name="empAddress"
                          value={inEmpData.empAddress}
                          onChange={handleInputChange}
                        />
                      </div>
                    </div>
                    <div className="col-xxl-3 col-xl-3 col-lg-3 col-md-3 col-sm-12 col-12">
                      <div class="mb-3">
                        <label
                          for="exampleFormControlInput1"
                          class="form-label"
                        >
                          Employee Status
                        </label>
                        <select
                          name="status"
                          id=""
                          class="form-select"
                          required
                          aria-label="Default select example"
                          value={inEmpData.status}
                          onChange={handleInputChange}
                        >
                          <option value="">select-status</option>
                          <option value="onboard">Onboard</option>
                          <option value="Approved">Approved</option>
                          <option value="pending">Pending</option>
                          {/* <option value="rejected">Rejected</option> */}
                          <option value="hold">Hold</option>
                          {/* <option value="leave">Leave</option> */}
                        </select>
                      </div>
                    </div>
                    {inEmpData.empDesignation !== "doctor" && (
                      <>
                        <div className="col-xxl-3 col-xl-3 col-lg-3 col-md-3 col-sm-12 col-12">
                          <div class="mb-3">
                            <label
                              for="exampleFormControlInput1"
                              class="form-label"
                            >
                              All Day Shift Start Time
                            </label>
                            <input
                              type="time"
                              class="form-control"
                              id="exampleFormControlInput1"
                              placeholder="Employee Mobile"
                              name="allDayShiftStartTime"
                              required
                              value={inEmpData.allDayShiftStartTime}
                              onChange={handleInputChange}
                            />
                          </div>
                        </div>
                        <div className="col-xxl-3 col-xl-3 col-lg-3 col-md-3 col-sm-12 col-12">
                          <div class="mb-3">
                            <label
                              for="exampleFormControlInput1"
                              class="form-label"
                            >
                              All Day Shift End Time
                            </label>
                            <input
                              type="time"
                              class="form-control"
                              required
                              id="exampleFormControlInput1"
                              placeholder="Employee Mobile"
                              name="allDayShiftEndTime"
                              value={inEmpData.allDayShiftEndTime}
                              onChange={handleInputChange}
                            />
                          </div>
                        </div>
                      </>
                    )}

                    <div className="col-xxl-3 col-xl-3 col-lg-3 col-md-3 col-sm-12 col-12">
                      <div className="mb-3">
                        <label
                          for="exampleFormControlInput1"
                          class="form-label"
                        >
                          Working Days
                        </label>
                        <input
                          type="text"
                          class="form-control"
                          id="exampleFormControlInput1"
                          placeholder="working days"
                          name="working_days"
                          required
                          value={inEmpData.working_days}
                          onChange={handleInputChange}
                        />
                      </div>
                    </div>
                    <div className="col-xxl-3 col-xl-3 col-lg-3 col-md-3 col-sm-12 col-12">
                      <div className="mb-3">
                        <label
                          for="exampleFormControlInput1"
                          class="form-label"
                        >
                          One Time Login Password
                        </label>
                        <input
                          type="password"
                          class="form-control"
                          id="exampleFormControlInput1"
                          placeholder="Employee Password"
                          name="password"
                          required
                          value={inEmpData.password}
                          onChange={handleInputChange}
                        />
                      </div>
                    </div>

                    {inEmpData.empDesignation === "doctor" && (
                      <>
                        <div className="col-xxl-3 col-xl-3 col-lg-3 col-md-3 col-sm-12 col-12">
                          <div class="mb-3">
                            <label
                              for="exampleFormControlInput1"
                              class="form-label"
                            >
                              Morning Shift Start Time
                            </label>
                            <input
                              required
                              type="time"
                              class="form-control"
                              id="exampleFormControlInput1"
                              placeholder="Employee Mobile"
                              name="morningShiftStartTime"
                              value={inEmpData.morningShiftStartTime}
                              onChange={handleInputChange}
                            />
                          </div>
                        </div>
                        <div className="col-xxl-3 col-xl-3 col-lg-3 col-md-3 col-sm-12 col-12">
                          <div class="mb-3">
                            <label
                              for="exampleFormControlInput1"
                              class="form-label"
                            >
                              Morning Shift End Time
                            </label>
                            <input
                              type="time"
                              class="form-control"
                              id="exampleFormControlInput1"
                              placeholder="Employee Mobile"
                              name="morningShiftEndTime"
                              value={inEmpData.morningShiftEndTime}
                              onChange={handleInputChange}
                              required
                            />
                          </div>
                        </div>
                        <div className="col-xxl-3 col-xl-3 col-lg-3 col-md-3 col-sm-12 col-12">
                          <div class="mb-3">
                            <label
                              for="exampleFormControlInput1"
                              class="form-label"
                            >
                              Evening Shift Start Time
                            </label>
                            <input
                              type="time"
                              class="form-control"
                              id="exampleFormControlInput1"
                              placeholder="Employee Mobile"
                              name="eveningShiftStartTime"
                              value={inEmpData.eveningShiftStartTime}
                              onChange={handleInputChange}
                              required
                            />
                          </div>
                        </div>
                        <div className="col-xxl-3 col-xl-3 col-lg-3 col-md-3 col-sm-12 col-12">
                          <div class="mb-3">
                            <label
                              for="exampleFormControlInput1"
                              class="form-label"
                            >
                              Evening Shift End Time
                            </label>
                            <input
                              type="time"
                              class="form-control"
                              id="exampleFormControlInput1"
                              placeholder="Employee Mobile"
                              name="eveningShiftEndTime"
                              value={inEmpData.eveningShiftEndTime}
                              onChange={handleInputChange}
                              required
                            />
                          </div>
                        </div>
                        <div className="col-xxl-3 col-xl-3 col-lg-3 col-md-3 col-sm-12 col-12">
                          <div className="mb-3">
                            <label
                              for="exampleFormControlInput1"
                              class="form-label"
                            >
                              Doctor Education
                            </label>
                            <input
                              type="text"
                              class="form-control"
                              id="exampleFormControlInput1"
                              placeholder="employee_education"
                              required
                              name="employee_education"
                              value={inEmpData.employee_education}
                              onChange={handleInputChange}
                            />
                          </div>
                        </div>

                        <div className="col-xxl-3 col-xl-3 col-lg-3 col-md-3 col-sm-12 col-12">
                          <div className="mb-3">
                            <label
                              for="exampleFormControlInput1"
                              class="form-label"
                            >
                              Speciality
                            </label>
                            <input
                              type="text"
                              class="form-control"
                              id="exampleFormControlInput1"
                              placeholder="speciality"
                              name="speciality"
                              required
                              value={inEmpData.speciality}
                              onChange={handleInputChange}
                            />
                          </div>
                        </div>
                        <div className="col-xxl-3 col-xl-3 col-lg-3 col-md-3 col-sm-12 col-12">
                          <div className="mb-3">
                            <label
                              for="exampleFormControlInput1"
                              class="form-label"
                            >
                              language
                            </label>
                            <input
                              type="text"
                              class="form-control"
                              id="exampleFormControlInput1"
                              placeholder="language"
                              name="language"
                              required
                              value={inEmpData.language}
                              onChange={handleInputChange}
                            />
                          </div>
                        </div>
                        <div className="col-xxl-3 col-xl-3 col-lg-3 col-md-3 col-sm-12 col-12">
                          <div className="mb-3">
                            <label
                              for="exampleFormControlInput1"
                              class="form-label"
                            >
                              experience
                            </label>
                            <input
                              type="text"
                              class="form-control"
                              id="exampleFormControlInput1"
                              placeholder="experience"
                              required
                              name="experience"
                              value={inEmpData.experience}
                              onChange={handleInputChange}
                            />
                          </div>
                        </div>
                      </>
                    )}

                    <div className="col-xxl-3 col-xl-3 col-lg-3 col-md-3 col-sm-12 col-12">
                      <div className="mb-3">
                        <label
                          for="exampleFormControlInput1"
                          class="form-label"
                        >
                          type_of
                        </label>

                        <select
                          id=""
                          name="type_of"
                          value={inEmpData.type_of}
                          class="form-control"
                          required
                          onChange={handleInputChange}
                        >
                          <option value="">--Select--</option>
                          <option value="full time">Full Time</option>
                          <option value="half time">Part Time</option>
                        </select>
                      </div>
                    </div>
                  </div>
                </div>

                <div className="d-flex justify-content-between">
                  <div class="">
                    <label for="exampleFormControlInput1" class="form-label">
                      Employee Role
                    </label>
                    {rolesVal?.map((role) => (
                      <div className="form-check" key={role}>
                        <input
                          className="form-check-input"
                          type="checkbox"
                          id={`flexCheck${role}`}
                          name={role}
                          checked={inEmpData.empRole.includes(role)}
                          onChange={handleCheckChange}
                        />
                        <label
                          className="form-check-label"
                          htmlFor={`flexCheck${role}`}
                        >
                          {role.charAt(0).toUpperCase() + role.slice(1)}
                        </label>
                      </div>
                    ))}
                    {/* <div class="form-check">
                      <input
                        class="form-check-input"
                        type="checkbox"
                        id="flexCheckDefault"
                        name="admin"
                        value={inEmpData.empRole}
                        onChange={handleCheckChange}
                      />
                      <label class="form-check-label" for="flexCheckDefault">
                        Admin
                      </label>
                    </div>
                    <div class="form-check">
                      <input
                        class="form-check-input"
                        type="checkbox"
                        id="flexCheckDefault"
                        name="receptionist"
                        value={inEmpData.empRole}
                        onChange={handleCheckChange}
                      />
                      <label class="form-check-label" for="flexCheckDefault">
                        Receptionist
                      </label>
                    </div>
                    <div class="form-check">
                      <input
                        class="form-check-input"
                        type="checkbox"
                        id="flexCheckDefault"
                        name="accountant"
                        value={inEmpData.empRole}
                        onChange={handleCheckChange}
                      />
                      <label class="form-check-label" for="flexCheckDefault">
                        Accountant
                      </label>
                    </div>
                    <div class="form-check">
                      <input
                        class="form-check-input"
                        type="checkbox"
                        id="flexCheckDefault"
                        name="consultant"
                        value={inEmpData.empRole}
                        onChange={handleCheckChange}
                      />
                      <label class="form-check-label" for="flexCheckDefault">
                        Consultant
                      </label>
                    </div>
                    <div class="form-check">
                      <input
                        class="form-check-input"
                        type="checkbox"
                        id="flexCheckDefault"
                        name="lab attendant"
                        value={inEmpData.empRole}
                        onChange={handleCheckChange}
                      />
                      <label class="form-check-label" for="flexCheckDefault">
                        Lab Attendent
                      </label>
                    </div>
                    <div class="form-check">
                      <input
                        class="form-check-input"
                        type="checkbox"
                        id="flexCheckDefault"
                        name="doctor"
                        value={inEmpData.empRole}
                        onChange={handleCheckChange}
                      />
                      <label class="form-check-label" for="flexCheckDefault">
                        Doctor
                      </label>
                    </div> */}
                  </div>
                  <div className="d-flex">
                    <div className="mb-3">
                      <label for="exampleFormControlInput1" class="form-label">
                        Upload Employee Profile Picture
                      </label>
                      <input
                        type="file"
                        class="p-1 w-100 rounded"
                        placeholder="available stock"
                        accept=".pdf, .jpg, .jpeg, .png"
                        required
                        name="empProfilePicture"
                        onChange={handleEmpProfilePicture}
                        ref={fileinput}
                      />
                      <small className="text-danger">
                        Allowed sizes are: 2286×2858, 1920×2400, 1280×1600,
                        512×640.
                      </small>
                    </div>
                    <div className="mb-3 mx-2">
                      {empProfilePicture && (
                        <img
                          src={empProfilePicture.imageUrl}
                          alt="profile"
                          className="imgData"
                        />
                      )}
                    </div>
                  </div>
                </div>

                <div className="d-flex justify-content-center">
                  <button type="submit" className="btn btn-success">
                    Save
                  </button>
                  <button
                    type="button"
                    className="btn btn-danger mx-2"
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
    </>
  );
};

export default ManageStaff;
const Container = styled.div`
  .popup-container {
    display: none;
    position: fixed;
    top: 0;
    left: 0;
    width: 100%;
    overflow: scroll;
    z-index: 99999;
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
    margin-top: 1rem;
    border-radius: 8px;
    height: auto;
    width: auto;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.2);
  }

  th {
    background-color: #004aad;
    color: white;
    text-align: center;
  }
  td {
    text-align: center;
  }
  .select-style {
    border: none;
    background-color: #22a6b3;
    font-weight: bold;
    color: white;
  }

  label {
    font-weight: bold;
  }

  .thead {
    min-width: 8rem;
  }

  .imgData {
    height: 10rem;
    width: auto;
  }

  .smallImg {
    img {
      height: 6rem;
      width: auto;
    }
  }

  .table-responsive {
    height: 30rem;
    overflow: auto;
  }

  th {
    background-color: #008080;
    color: white;
    position: sticky;
  }

  .sticky {
    position: sticky;
    top: 0;
    background-color: #008080;
    color: white;
    z-index: 1;
  }

  .input::placeholder {
    color: #aaa;
    opacity: 1; /* Ensure placeholder is visible */
    font-size: 1.2rem;
    transition: color 0.3s ease;
  }

  .input:focus::placeholder {
    color: transparent; /* Hide placeholder on focus */
  }

  .input {
    width: 110%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    border-radius: 20px;
    box-sizing: border-box;
    transition: border-color 0.3s ease;
  }

  .input:focus {
    border-color: #007bff; /* Change border color on focus */
  }
`;
