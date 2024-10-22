import React, { useEffect, useState, useRef } from "react";
import styled from "styled-components";
import Select from "react-select";
import axios from "axios";
import { useDispatch, useSelector } from "react-redux";
import { toggleTableRefresh } from "../../../../../../redux/user/userSlice";
import { useNavigate } from "react-router-dom";
import cogoToast from "cogo-toast";

function BookAppointment() {
  const formRef = useRef(null);
  const navigate = useNavigate();
  const dispatch = useDispatch();
  const { refreshTable, currentUser } = useSelector((state) => state.user);
  const {currentBranch} = useSelector((state) => state.branch);
  const token = currentUser?.token;
  const branch = currentUser?.branch_name;
  const [searchQuery, setSearchQuery] = useState("");
  const [searchDoctor, setSearchDoctor] = useState("");
  const [showDoctorList, setShowDoctorList] = useState(false);
  const [selectedPatient, setSelectedPatient] = useState(null); // State to store the selected patient
  const [selectedDoctor, setSelectedDoctor] = useState(null); // State to store the selected Doctor
  const [selectedTreatment, setSelectedTreatment] = useState([]);
  const [patients, setPatients] = useState([]);
  const [treatments, setTreatment] = useState([]);
  const [appointmentsData, setAppointmentsData] = useState([]);
  const [branchDetail, setBranchDetail] = useState([]);
  const [weekOffDay, setWeekOffDay] = useState("");
  const [branchHolidays, setBranchHolidays] = useState([]);
  const [patientTreatmentDetails, setPatientTreatmentDetails] = useState([]);

  let opdCost ;

  const opdCostfind = treatments?.filter(
    (treatment) => treatment?.treatment_name === "OPD"
  )
 
  if(currentBranch[0]?.hospital_category === "Nabh"){
    opdCost = opdCostfind[0]?.nabh
  }
  else if (currentBranch[0]?.hospital_category === "non-Nabh"){
    opdCost = opdCostfind[0]?.non_nabh
  }
  else{
    opdCost = opdCostfind[0]?.treatment_cost
  }
  
  console.log(patientTreatmentDetails);
  const [loading, setLoading] = useState(false);

  const [opdAmount, setOpdAmount] = useState(opdCost); // State to store the OPD amount, initialized with opdCost

  // Update opdAmount when opdCost changes
  useEffect(() => {
    setOpdAmount(opdCost);
  }, [opdCost]);

  // Handle change in opdAmount
  const handleOpdAmountChange = (e) => {
    setOpdAmount(e.target.value);
  };

  const handleWeekOfDay = (day) => {
    if (day == "sunday") {
      setWeekOffDay(0);
    } else if (day == "monday") {
      setWeekOffDay(1);
    } else if (day == "tuesday") {
      setWeekOffDay(2);
    } else if (day == "wednesday") {
      setWeekOffDay(3);
    } else if (day == "thursday") {
      setWeekOffDay(4);
    } else if (day == "friday") {
      setWeekOffDay(5);
    } else if (day == "saturday") {
      setWeekOffDay(6);
    } else {
      setWeekOffDay("");
    }
  };

  console.log(treatments);
  const getBranchDetail = async () => {
    try {
      const response = await axios.get(
        `https://dentalguru-lite.vimubds5.a2hosted.com/api/v1/receptionist/get-branch-detail/${branch}`
      );
      console.log(response);
      setBranchDetail(response.data.data);
    } catch (error) {
      console.log(error);
    }
  };
  const getBranchHolidays = async () => {
    try {
      const response = await axios.get(
        `https://dentalguru-lite.vimubds5.a2hosted.com/api/v1/receptionist/get-branch-holidays/${branch}`,
        {
          headers: {
            "Content-Type": "application/json",
            Authorization: `Bearer ${token}`,
          },
        }
      );
      console.log(response);
      setBranchHolidays(response.data.data);
    } catch (error) {
      console.log(error);
    }
  };

  const getPatientTreatmentDetails = async (uhid) => {
    try {
      const response = await axios.get(
        `https://dentalguru-lite.vimubds5.a2hosted.com/api/v1/receptionist/getPatientDeatilsByUhid/${branch}/${uhid}`,
        {
          headers: {
            "Content-Type": "application/json",
            Authorization: `Bearer ${token}`,
          },
        }
      );

      setPatientTreatmentDetails(response.data.data);

      // setSearchDoctor(patientTreatmentDetails[0]?.doctor_name)
    } catch (error) {
      setPatientTreatmentDetails([]);
      console.log(error);
    }
  };

  // Generate time slots with 15-minute intervals
  const generateTimeSlots = () => {
    const slots = [];

    for (
      let hour = parseInt(branchDetail[0]?.open_time?.split(":")[0]);
      hour < parseInt(branchDetail[0]?.close_time?.split(":")[0]);
      hour++
    ) {
      for (
        let minute = 0;
        minute < 60;
        minute += parseInt(
          branchDetail[0]?.appoint_slot_duration?.split(" ")[0]
        )
      ) {
        const formattedHour24 = hour.toString().padStart(2, "0");
        const formattedMinute = minute.toString().padStart(2, "0");

        // Convert hour to 12-hour format for label
        const period = hour < 12 ? "AM" : "PM";
        const formattedHour12 = (((hour + 11) % 12) + 1)
          .toString()
          .padStart(2, "0");

        const time24 = `${formattedHour24}:${formattedMinute}`;
        const time12 = `${formattedHour12}:${formattedMinute} ${period}`;

        slots.push({ value: time24, label: time12 });
      }
    }
    return slots;
  };

  const timeSlots = generateTimeSlots();

  // Function to format date in YYYY-MM-DD format
  const formatDate = (date) => {
    const year = date.getFullYear();
    const month = (date.getMonth() + 1).toString().padStart(2, "0");
    const day = date.getDate().toString().padStart(2, "0");
    return `${year}-${month}-${day}`;
  };

  const [selectedDate, setSelectedDate] = useState(formatDate(new Date()));

  const handleDateChange = (e) => {
    const { name, value } = e.target;
    setBookData({
      ...bookData,
      [name]: value,
      appDateTime: `${value}T${bookData.appDateTime?.split("T")[1]}`, // Update the appointment_dateTime with the new date and existing time
    });
    setSelectedDate(value);
  };

  console.log(treatments);

  const getPatient = async () => {
    try {
      const response = await axios.get(
        `https://dentalguru-lite.vimubds5.a2hosted.com/api/v1/receptionist/get-Patients/${branch}`,
        {
          headers: {
            "Content-Type": "application/json",
            Authorization: `Bearer ${token}`,
          },
        }
      );
      console.log(response);
      setPatients(response?.data?.data);
    } catch (error) {
      console.log(error);
    }
  };

  const getAppointments = async () => {
    try {
      const response = await axios.get(
        `https://dentalguru-lite.vimubds5.a2hosted.com/api/v1/receptionist/get-appointments/${branch}`,
        {
          headers: {
            "Content-Type": "application/json",
            Authorization: `Bearer ${token}`,
          },
        }
      );
      setAppointmentsData(response?.data?.data);
    } catch (error) {
      console.log(error);
    }
  };

  const getTreatment = async () => {
    try {
      const response = await axios.get(
        "https://dentalguru-lite.vimubds5.a2hosted.com/api/v1/receptionist/get-treatments"
      );
      console.log(response);
      setTreatment(response?.data?.data);
    } catch (error) {
      console.log(error);
    }
  };

  const [doctors, setDoctors] = useState([]);

  const getDoctors = async () => {
    try {
      const response = await axios.get(
        `https://dentalguru-lite.vimubds5.a2hosted.com/api/v1/receptionist/get-doctors/${branch}`,
        {
          headers: {
            "Content-Type": "application/json",
            Authorization: `Bearer ${token}`,
          },
        }
      );
      let data = response?.data?.data;
      setDoctors(data);
      let currentDoctor = data.find((item) => item?.employee_name === currentUser?.employee_name)
      console.log(currentDoctor, currentUser, "rjlewjlksdjflksdj"); 
      setSelectedDoctor(currentDoctor)
    } catch (error) {
      console.log(error);
    }
  };

  useEffect(() => {
    getPatient();
    getTreatment();
    getDoctors();
    getAppointments();
    getDoctorsWithLeave();
    getBranchDetail();
    getBranchHolidays();
  }, []);
  useEffect(() => {
    handleWeekOfDay(branchDetail[0]?.week_off);
  }, [branchDetail]);

  useEffect(() => {
    getPatient();
    getAppointments();
  }, [refreshTable]);

  console.log(branchDetail);

  const [doctorWithLeave, setDoctorWithLeave] = useState([]);
  const getDoctorsWithLeave = async () => {
    try {
      const response = await axios.get(
        `https://dentalguru-lite.vimubds5.a2hosted.com/api/v1/receptionist/get-doctors-with-leave/${branch}`,
        {
          headers: {
            "Content-Type": "application/json",
            Authorization: `Bearer ${token}`,
          },
        }
      );
      setDoctorWithLeave(response?.data?.data);
    } catch (error) {
      console.log(error);
    }
  };

  console.log(weekOffDay);

  const handleChangeTreatment = (selectedOption) => {
    setSelectedTreatment(selectedOption.value);
  };

  const [data, setData] = useState({
    uid: "1",
    patient_Name: "",
    mobile: "",
    email: "",
    gender: "",
    contact_Person: "",
    contact_Person_Name: "",
    blood_Group: "",
    dob: "",
    age: "",
    weight: "",
    allergy: "",
    disease: "",
    patientType: "",
    status: "",
    doctorId: "",
    doctor_name: "",
    appDateTime: "",
    treatment: "",
    notes: "",
    address: "",
  });

  const [bookData, setBookData] = useState({
    branch_name: "",
    patient_Name: "",
    mobile: "",
    status: "",
    doctorId: "",
    doctor_name: "",
    appDateTime: "",
    treatment: "",
    opd_amount: "",
    payment_Mode: "",
    transaction_Id: "",
    // cheque_number : "",
    payment_Status: "",
    notes: "",
    appointment_created_by: "",
    appointment_updated_by: "",
    appointment_created_by_emp_id: "",
    appointment_updated_by_emp_id: "",
  });

  const [availableDoctorOnDate, setAvailableDoctorOnDate] = useState([]);

  useEffect(() => {
    setSearchDoctor("");
    // setSelectedDoctor(null);
    if (!selectedDate) {
      return;
    }
    const selectedDateTime = new Date(selectedDate);

    const filteredDoctors = doctors.filter((doctor) => {
      const doctorLeaveEntries = doctorWithLeave.filter(
        (doc) => doc.employee_ID === doctor.employee_ID
      );

      if (doctorLeaveEntries.length > 0) {
        return !doctorLeaveEntries.some((entry) => {
          const leaveDates = entry.leave_dates?.split(",");
          return leaveDates.includes(
            selectedDateTime.toISOString()?.split("T")[0]
          );
        });
      }
      return true;
    });

    setAvailableDoctorOnDate(filteredDoctors);
  }, [selectedDate, doctorWithLeave, doctors]);

  console.log(availableDoctorOnDate);

  const [filteredPatients, setFilteredPatients] = useState([]);
  const [filteredDoctor, setFilteredDoctor] = useState([]);

  useEffect(() => {
    // Filter patients based on the search query if there's a search query, otherwise set an empty array
    const filtered = searchQuery
      ? patients.filter(
          (patient) =>
            patient.patient_name
              .toLowerCase()
              .includes(searchQuery.toLowerCase().trim()) ||
            patient.mobileno.includes(searchQuery.trim()) ||
            patient.uhid
              .toLowerCase()
              .includes(searchQuery.toLowerCase().trim())
        )
      : [];
    setFilteredPatients(filtered);
  }, [searchQuery, patients]);

  const handleSearch = (e) => {
    setSearchQuery(e.target.value);
  };

  useEffect(() => {
    // Filter patients based on the search query if there's a search query, otherwise set an empty array

    const filtered = showDoctorList
      ? availableDoctorOnDate.filter((doctor) =>
          doctor.employee_name
            .toLowerCase()
            .includes(searchDoctor.toLowerCase().trim())
        )
      : [];
    setFilteredDoctor(filtered);
  }, [searchDoctor]);

  const handleSearchDoctor = (e) => {
    setShowDoctorList(true);
    setSearchDoctor(e.target.value);
  };
  console.log(selectedPatient);
  useEffect(() => {
    const calculateAge = (date) => {
      const dob = new Date(date);
      const now = new Date();
      let years = now.getFullYear() - dob.getFullYear();

      // Adjust for leap years
      const dobThisYear = new Date(
        now.getFullYear(),
        dob.getMonth(),
        dob.getDate()
      );
      if (now < dobThisYear) {
        years--;
      }

      setData({ ...data, age: years });
    };
    calculateAge(data.dob);
  }, [data.dob]);

  const handleChange = (e) => {
    const { name, value } = e.target;
    setData({
      ...data,
      [name]: value,
    });
  };

  console.log(patientTreatmentDetails);
  console.log(selectedDoctor);

  const handlePatientSelect = (patient) => {
    getPatientTreatmentDetails(patient.uhid);
    setSelectedPatient(patient); // Set the selected patient when it's clicked
    setSearchQuery(""); // Reset the search query to close the search list
  };

  useEffect(() => {
    setSelectedTreatment([]);
    const filtered = patientTreatmentDetails?.length
      ? availableDoctorOnDate.filter((doctor) =>
          doctor.employee_name
            .toLowerCase()
            .includes(patientTreatmentDetails[0]?.doctor_name.toLowerCase())
        )
      : [];
    setSearchDoctor(
      filtered[0]?.employee_name ? filtered[0].employee_name : ""
    );
    // setSelectedDoctor(filtered[0]);

    const filteredTreatment = patientTreatmentDetails?.length
      ? patientTreatmentDetails?.filter(
          (treatment) =>
            treatment?.treatment_status?.toLowerCase()?.includes("ongoing") ||
            treatment?.treatment_status?.toLowerCase()?.includes("pending")
        )
      : [];
    // Filter treatments that are not in filteredTreatment
    const remainingTreat = treatments.filter((item) =>
      filteredTreatment.some(
        (treatment) => treatment.treatment_name === item.treatment_name
      )
    );
    const ongoingTreat = remainingTreat.filter((item) =>
      filteredTreatment.some(
        (treatment) =>
          treatment.treatment_name === item.treatment_name &&
          treatment.treatment_status.toLowerCase().includes("ongoing")
      )
    );
    const pendingTreat = remainingTreat.filter((item) =>
      filteredTreatment.some(
        (treatment) =>
          treatment.treatment_name === item.treatment_name &&
          treatment.treatment_status.toLowerCase().includes("pending")
      )
    );

    console.log(ongoingTreat);

    console.log(remainingTreat);
    if (remainingTreat.length) {
      if (ongoingTreat.length > 0) {
        setTreatment(ongoingTreat);
      } else {
        setTreatment(pendingTreat);
      }
    } else {
      getTreatment();
    }
    setShowDoctorList(false);
    console.log(filtered);
  }, [patientTreatmentDetails]);

  console.log(currentBranch[0]);

  const handleDoctorSelect = (doctor) => {
    setShowDoctorList(false);
    setSearchDoctor(doctor.employee_name); // Reset the search query to close the search list
  };

  console.log(filteredDoctor);
  console.log(bookData.appDateTime);

  const handleBookChange = (e) => {
    const { name, value } = e.target;
    setBookData({
      ...bookData,
      [name]: value,
    });
  };

  const timelineData = async (id) => {
    try {
      const response = await axios.post(
        "https://dentalguru-lite.vimubds5.a2hosted.com/api/v1/receptionist/insertTimelineEvent",
        {
          type: "Appointment",
          description: "Appointment scheduled",
          branch: branch,
          patientId: id,
        },
        {
          headers: {
            "Content-Type": "application/json",
            Authorization: `Bearer ${token}`,
          },
        }
      );
      console.log(response);
    } catch (error) {
      console.log(error);
    }
  };

  const handleBookAppointment = async (e) => {
    e.preventDefault();

    // Check if the selected doctor is null

    if (!selectedDoctor) {
      cogoToast.error("Please select doctor from the list");
      console.log("Please select a doctor");
      return;
    }
    
    if (selectedTreatment?.length == 0) {
      cogoToast.error("Please select treatment");
      console.log("Please select treatment");
      return;
    }

    const selectedDay = new Date(selectedDate).getDay();
    if (selectedDay === weekOffDay) {
      cogoToast.info(
        "Selected date is a week off day. Please choose another date."
      );
      return;
    }

    if (bookData.payment_Status === "unpaid") {
      cogoToast.info("Please paid the OPD amount to book appointment");
      return;
    }

    // Convert appointment time to Date object
    const selectedDateTime = new Date(bookData.appDateTime);
    const isBranchHoliday = branchHolidays.some((holiday) => {
      let holidayDate = new Date(holiday.holiday_date);
      holidayDate = new Date(
        holidayDate.getFullYear(),
        holidayDate.getMonth(),
        holidayDate.getDate()
      );
      const compareDateandTime = new Date(bookData.appDateTime);
      let selectedDateTime = new Date(bookData.appDateTime);
      selectedDateTime = new Date(
        selectedDateTime.getFullYear(),
        selectedDateTime.getMonth(),
        selectedDateTime.getDate()
      );
      console.log(holidayDate.getTime(), selectedDateTime.getTime());
      if (holidayDate.getTime() === selectedDateTime.getTime()) {
        const holidayStart = new Date(selectedDateTime);
        holidayStart.setHours(
          holiday?.holiday_start_time?.split(":")[0],
          holiday?.holiday_start_time?.split(":")[1]
        );
        const holidayEnd = new Date(selectedDateTime);
        holidayEnd.setHours(
          holiday?.holiday_end_time?.split(":")[0],
          holiday?.holiday_end_time?.split(":")[1]
        );

        console.log(holidayStart, holidayEnd, compareDateandTime);
        console.log(
          compareDateandTime >= holidayStart && compareDateandTime <= holidayEnd
        );
        return (
          compareDateandTime >= holidayStart && compareDateandTime <= holidayEnd
        );
      }
      return false; // If holidayDate doesn't match selectedDate, return false
    });

    if (isBranchHoliday) {
      cogoToast.info(
        `Selected date is branch holiday please select other date`
      );
      return;
    }

    // Check if the selected doctor is available during the appointment time
    const isDoctorAvailable = (selectedDateTime) => {
      const morningStart = new Date(selectedDateTime);
      morningStart.setHours(
        selectedDoctor.morning_shift_start_time?.split(":")[0],
        selectedDoctor.morning_shift_start_time?.split(":")[1]
      );
      const morningEnd = new Date(selectedDateTime);
      morningEnd.setHours(
        selectedDoctor.morning_shift_end_time?.split(":")[0],
        selectedDoctor.morning_shift_end_time?.split(":")[1]
      );
      const eveningStart = new Date(selectedDateTime);
      eveningStart.setHours(
        selectedDoctor.evening_shift_start_time?.split(":")[0],
        selectedDoctor.evening_shift_start_time?.split(":")[1]
      );
      const eveningEnd = new Date(selectedDateTime);
      eveningEnd.setHours(
        selectedDoctor.evening_shift_end_time?.split(":")[0],
        selectedDoctor.evening_shift_end_time?.split(":")[1]
      );

      return (
        (selectedDateTime >= morningStart && selectedDateTime <= morningEnd) ||
        (selectedDateTime >= eveningStart && selectedDateTime <= eveningEnd)
      );
    };

    const isSlotAvailable = appointmentsData.every((appointment) => {
      // Check if the appointment is for the selected doctor and if it falls within the same datetime range
      const appointmentDate = new Date(appointment.appointment_dateTime);
      const selectedDate = new Date(bookData.appDateTime);

      // Check if the appointment status is 'Cancel'
      const isCanceled = appointment.appointment_status !== "Cancel";

      return !(
        appointment.assigned_doctor_id === selectedDoctor.employee_ID &&
        appointmentDate.getTime() === selectedDate.getTime() &&
        isCanceled
      );
    });


    if (isSlotAvailable) {
      // Slot is available, proceed with booking
      const newAppointment = {
        branch_name: branch,
        clinicName: branchDetail[0]?.hospital_name.toUpperCase(),
        clinicContact: branchDetail[0]?.branch_contact,
        clinicAddress: branchDetail[0]?.branch_address,
        clinicEmail: branchDetail[0]?.branch_email,
        patient_Email: selectedPatient.emailid,
        mobileno : selectedPatient?.mobileno,
        patient_Name: selectedPatient.patient_name,
        tp_id: patientTreatmentDetails[0]?.tp_id,
        patient_uhid: selectedPatient.uhid,
        doctorId: selectedDoctor.employee_ID,
        doctor_name: selectedDoctor.employee_name,
        doctor_email: selectedDoctor.employee_email,
        appDateTime: bookData.appDateTime,
        treatment: selectedTreatment,
        notes: bookData.notes,
        status: "Appoint",
        opd_amount: selectedTreatment === "OPD" ? opdAmount : "0",
        payment_Mode: bookData.payment_Mode,
        transaction_Id: bookData.transaction_Id,
        payment_Status: bookData.payment_Status,
        appointment_created_by: currentUser?.employee_name,
        appointment_created_by_emp_id: currentUser?.employee_ID,
        sharemail : currentBranch[0]?.sharemail,
        sharewhatsapp : currentBranch[0]?.sharewhatsapp,
        sharesms : currentBranch[0]?.sharesms
      };

      if (!isDoctorAvailable(selectedDateTime)) {

        const confirmation = window.confirm(
          "The selected doctor is not available at the specified time. Do you want to proceed with booking?"
        );
        if (!confirmation) {
          return; // If the user cancels, return early
        }
      }

      try {
        setLoading(true);
        const response = await axios.post(
          "https://dentalguru-lite.vimubds5.a2hosted.com/api/v1/receptionist/book-appointment",
          newAppointment,
          {
            headers: {
              "Content-Type": "application/json",
              Authorization: `Bearer ${token}`,
            },
          }
        );

        if (response.data.success) {
          setLoading(false);
          cogoToast.success(response?.data?.message);
          dispatch(toggleTableRefresh());
          timelineData(selectedPatient.uhid);
          console.log(response?.data?.data);
          formRef.current.reset();
          setSelectedPatient(null);
          setSearchDoctor("");
          setSelectedTreatment([]);

          if (response?.data?.treatment === "OPD") {
            navigate(`/print_Opd_Reciept/${response?.data?.data?.insertId}`);
          }
        } else {
          setLoading(false);
          cogoToast.error(response?.data?.message || "Something went wrong");

          console.log(response.data);
        }
      } catch (error) {
        setLoading(false);
        console.log(error);
        cogoToast.error(
          error?.response?.data?.message || "Something went wrong"
        );
      }
    } else {
      // Slot is not available
      cogoToast.error(
        "The selected doctor's slot is already booked at the specified time"
      );
      console.log(
        "The selected doctor's slot is already booked at the specified time"
      );
    }
  };

  return (
    <Wrapper>
      <form ref={formRef} onSubmit={handleBookAppointment}>
        <ul className="list-group">
          <li className="list-group-item">
            
            <input
              class="form-control mr-sm-2 mt-3 mb-2 m-auto"
              type="search"
              placeholder="Search Patient Name or Mobile or UHID"
              aria-label="Search"
              value={searchQuery}
              onChange={handleSearch}
            />
            <PatientList>
              <ul className="list-group">
                {searchQuery && filteredPatients.length === 0 ? (
                  <li className="list-group-item text-center text-capitalize">
                    <h6>No Data Found</h6>
                  </li>
                ) : (
                  filteredPatients?.map((patient) => (
                    <li
                      key={patient.uid}
                      className={`list-group-item text-capitalize ${
                        selectedPatient && selectedPatient.uhid === patient.uhid
                          ? "active"
                          : ""
                      }`} // Add 'active' class if the patient is selected
                      onClick={() => handlePatientSelect(patient)} // Call handlePatientSelect function when the patient is clicked
                    >
                      {patient.uhid} {"-"} {" "}
                      {patient.patient_name}
                      <br/> Mobile : {patient.mobileno}
                      {/* Display other patient details as needed */}
                    </li>
                  ))
                )}
              </ul>
            </PatientList>

            <div className="row mt-5">
              <div className="col-sm-6 col-md-12">
                <div className="form-outline" id="form1">
                  <label className="form-label" for="name1">
                    Patient name *
                  </label>
                  <input
                    type="text"
                    id="name1"
                    className="form-control text-capitalize"
                    value={selectedPatient ? selectedPatient.patient_name : ""}
                    onChange={() =>
                      cogoToast.error(
                        "Please search patient form search bar and select"
                      )
                    }
                    required
                  />
                </div>
              </div>
              <div className="col-sm-6 ">
                <div className="form-outline">
                  
                  <label className="form-label mt-2" for="date1">
                    Patient Type
                  </label>
                  <input
                    id="text"
                    type="text"
                    value={selectedPatient ? selectedPatient?.patient_type : ""}
                    className="form-control"
                    onChange={handleDateChange}
                    readOnly
                    disabled
                    
                  />
                </div>
              </div>
            {
              selectedPatient?.patient_type == "Credit" &&
               <>
             <div className="col-sm-6 ">
                <div className="form-outline">
                  
                  <label className="form-label mt-2" for="date1">
                  Credit By
                  </label>
                  <input
                    id="text"
                    type="text"
                    value={selectedPatient ? selectedPatient?.credit_By : ""}
                    className="form-control"
                    onChange={handleDateChange}
                    readOnly
                    disabled
                    
                  />
                </div>
              </div>
              <div className="col-sm-6 ">
                <div className="form-outline">
                  
                  <label className="form-label mt-2" for="date1">
                  Beneficiary Id
                  </label>
                  <input
                    id="text"
                    type="text"
                    value={selectedPatient ? selectedPatient?.beneficiary_Id : ""}
                    className="form-control"
                    onChange={handleDateChange}
                    readOnly
                    disabled
                    
                  />
                </div>
              </div>
              </>
}
              <div className="col-sm-6 ">
                <div className="form-outline">
                  <label className="form-label mt-2" for="date1">
                    Appointment Date *
                  </label>
                  <input
                    id="date1"
                    type="date"
                    value={selectedDate}
                    className="form-control"
                    onChange={handleDateChange}
                    // min={formatDate(new Date())}
                    required
                  />
                </div>
              </div>
              <div className="col-sm-6 ">
                <div className="form-outline">
                  <label className="form-label mt-2" for="form6Example2">
                    Appointment Time *
                  </label>
                  <select
                    required
                    className="form-select"
                    onChange={(e) =>
                      setBookData({
                        ...bookData,
                        appDateTime: `${selectedDate}T${e.target.value}`,
                      })
                    }
                  >
                    <option value="">Select slot</option>
                    {timeSlots.map((time) => (
                      <option value={time.value}>{time.label}</option>
                    ))}
                  </select>
                </div>
              </div>

              <div className="col-sm-6">
                <div className="form-outline" id="form1">
                  <label className="form-label mt-2" for="treatment">
                    Add Treatment *
                  </label>
                  <Select
                    id="treatment"
                    name="treatment"
                    required
                    options={treatments}
                    value={
                      selectedTreatment
                        ? { value: selectedTreatment, label: selectedTreatment }
                        : null
                    }
                    onChange={handleChangeTreatment}
                  />
                </div>
              </div>
              {selectedTreatment === "OPD" && (
                <>
                  <div className="col-sm-6">
                    <div className="form-outline">
                      <label className="form-label mt-2" for="opd_amount">
                        OPD Amount *
                      </label>
                      <input
                        type="number"
                        id="opd_amount"
                        className="form-control"
                        onChange={handleOpdAmountChange}
                        name="opd_amount"
                        required
                        value={opdAmount}
                      />
                    </div>
                  </div>
                  <div className="col-sm-6">
                    <div className="form-outline">
                      <label className="form-label mt-2" for="paymentMode">
                        Payment Mode *
                      </label>
                      <select
                        className="form-select"
                        id="paymentMode"
                        name="payment_Mode"
                        onChange={handleBookChange}
                        required
                      >
                        <option value="">Select</option>
                        <option value="Cash">Cash</option>
                             {(selectedPatient?.patient_type == "Credit" && currentBranch[0]?.allow_insurance == "Yes") && <option value="Credit">Credit</option> }
                              <option value="UPI">UPI</option>
                              <option value="Card">Card</option>
                              {/* <option value="Cheque">Cheque</option> */}
                      </select>
                    </div>
                  </div>
                  {(bookData.payment_Mode === "Card" ||bookData.payment_Mode === "UPI" )  && (
                    <div className="col-sm-6">
                      <div className="form-outline">
                        <label className="form-label mt-2" for="transaction_Id">
                          Transaction Id *
                        </label>
                        <input
                          type="text"
                          id="transaction_Id"
                          className="form-control"
                          onChange={handleBookChange}
                          name="transaction_Id"
                          required
                          placeholder="Enter transaction Id"
                          maxLength={50}
                        />
                      </div>
                    </div>
                  )}
                    
                  <div className="col-sm-6">
                    <div className="form-outline">
                      <label className="form-label mt-2" for="payment_Status">
                        Payment Status *
                      </label>
                      <select
                        className="form-select"
                        id="payment_Status"
                        name="payment_Status"
                        onChange={handleBookChange}
                        required
                      >
                        <option value="">Select</option>
                        {(  bookData.payment_Mode == "Credit" ) ||   <option value="paid">Paid</option> }
                             {( bookData.payment_Mode == "Credit" ) && <option value="Credit">Credit</option> }
                      </select>
                    </div>
                  </div>
                </>
              )}

              <div className="col-sm-6">
                <div className="form-outline">
                  <label className="form-label mt-2" for="notes1">
                    Notes
                  </label>
                  <input
                    type="text"
                    id="notes1"
                    className="form-control"
                    onChange={handleBookChange}
                    name="notes"
                    maxLength={250}
                  />
                </div>
              </div>
              <div className="col-sm-6"></div>

            
              <div className="formbtn d-flex justify-content-lg-center justify-content-md-center">
                <button
                  className="btn btn-success "
                  type="submit"
                  id="btn2"
                  disabled={loading}
                >
                  {" "}
                  {loading ? "Loading..." : "Book Appointment"}
                </button>
              </div>
            </div>
          </li>
        </ul>
      </form>
    </Wrapper>
  );
}

export default BookAppointment;

const Wrapper = styled.div`
  position: relative;
  #section3 {
    @media screen and (max-width: 768px) {
      margin-top: 1rem;
      width: 20rem;
    }
    @media screen and (min-width: 768px) and (max-width: 1020px) {
      width: 41rem;
    }
  }
  .formbtn {
    margin-top: 1rem;
  }

  #tab1 {
    height: 12rem;
    overflow-y: auto;
    @media screen and (max-width: 768px) {
      margin-left: -1.1rem;
    }
  }

  #btn2 {
    @media screen and (max-width: 768px) {
      font-size: small;
      margin-left: 5.5rem;
    }
    @media screen and (min-width: 768px) and (max-width: 1020px) {
      font-size: small;
      margin: 1rem auto;
    }
    @media screen and (min-width: 1020px) and (max-width: 1600px) {
      margin-bottom: 1rem;
      font-size: small;
    }
    @media screen and (min-width: 1600px) and (max-width: 3700px) {
      margin-bottom: 1rem;
      font-size: small;
    }
  }
  #myTabContent {
    height: 28.5rem;
    overflow-y: auto;
  }
`;

// const FormContainer = styled.div`
//   /* Your styling for the form container */
//   margin-top: 50px;
// `;

const PatientList = styled.div`
  position: absolute;

  z-index: 1000;
  width: 100%;
  overflow-y: auto;
  max-height: 400px;
  /* Your styling for the patient list */
`;
const DoctorList = styled.div`
  position: absolute;
  z-index: 999; /* Set a high z-index to ensure the list is displayed above other elements */
  width: 100%;
  overflow-y: auto;
  max-height: 400px;

  /* Your additional styling for the doctor list */
`;
