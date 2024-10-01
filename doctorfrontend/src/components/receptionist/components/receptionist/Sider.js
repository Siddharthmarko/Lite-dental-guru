import React, { useState } from "react";
import { Link, useLocation, useNavigate } from "react-router-dom";
import styled from "styled-components";
// import { MdOutlineInventory } from "react-icons/md";

// import { ImLab } from "react-icons/im";
import { FaHistory } from "react-icons/fa";
import { IoSettings } from "react-icons/io5";
import { clearUser } from "../../redux/user/userSlice";
import { useDispatch } from "react-redux";
// import { useDispatch } from 'react-redux'
import { FaUserDoctor } from "react-icons/fa6";

const Sider = () => {
  const location = useLocation();
  const dispatch = useDispatch();
  const navigate = useNavigate();
  const [showAmountDropdown, setShowAmountDropdown] = useState(false);
  console.log(showAmountDropdown);
  const toggleAmountDropdown = () => {
    setShowAmountDropdown(!showAmountDropdown);
  };
  const logout = () => {
    // Display a confirmation popup
    const isConfirmed = window.confirm("Are you sure you want to Logout?");

    if (!isConfirmed) {
      // If the user cancels the deletion, do nothing
      return;
    }
    navigate("/");
    dispatch(clearUser());
  };

  const getSidebarClass = (path) => {
    return location.pathname === path ? "active-nav" : "";
  };

  return (
    <Wrapper>
      <div className="px-sm-2 px-0" id="sidebar">
        <div className="d-flex flex-column align-items-center  px-3 pt-4">
          <ul
            className="nav nav-pills flex-column mb-sm-auto mb-0 align-items-center "
            id="menu"
          >
            <li>
              <Link
                to="/dashboard"
                className={`link-div ${getSidebarClass("/Receptioinstdash")}`}
              >
                <div>
                  <i className="fs-4 bi bi-house-door-fill"></i>
                </div>
                <div>
                  <h3 className=" d-none d-sm-inline" id="navleft1">
                    Dashboard
                  </h3>
                </div>
              </Link>
            </li>
            <hr />
            <li>
              <Link
                to="/AllPatient"
                className={`link-div ${getSidebarClass("/AllPatient")}`}
              >
                <div>
                  <i className="bi bi-people-fill h1"></i>
                </div>
                <div>
                  <h3 className=" d-none d-sm-inline " id="navleft1">
                    Patients
                  </h3>
                </div>
              </Link>
            </li>
            <hr />
            <li>
              <div onClick={toggleAmountDropdown} className="link-div">
                <div>
                  <i className="fs-4 bi bi-currency-rupee"></i>{" "}
                  <span className="dropdown-toggle text-white"></span>
                </div>
                <div>
                  <h3 className="text-center" id="navleft1">
                    Amount Section{" "}
                  </h3>
                </div>
              </div>
              {showAmountDropdown && (
                <ul className="drop">
                  {/* <li>
                    <Link
                      to="/security_amount"
                      className={`link-div ${getSidebarClass(
                        "/security_amount"
                      )}`}
                    >
                      Security Amount
                    </Link>
                  </li> */}
                  <hr />
                  <li>
                    <Link
                      to="/invoices"
                      className={`link-div ${getSidebarClass("/invoices")}`}
                    >
                      Invoices
                    </Link>
                  </li>
                  {/* <hr /> */}
                  {/* <li>
                    <Link
                      to="/sitting-due-amount"
                      className={`link-div ${getSidebarClass(
                        "/sitting-due-amount"
                      )}`}
                    >
                      Due Sitting Bill
                    </Link>
                  </li>
                  <hr />
                  <li>
                    <Link
                      to="/sitting-paid-amount"
                      className={`link-div ${getSidebarClass(
                        "/sitting-paid-amount"
                      )}`}
                    >
                      Paid Sitting Bill
                    </Link>
                  </li> */}
                  <hr />
                  {/* <li>
                    <Link
                      to="/paid_amount"
                      className={`link-div ${getSidebarClass("/paid_amount")}`}
                    >
                      Paid Amount
                    </Link>
                  </li>
                  <hr /> */}
                  <li>
                    <Link
                      to="/all_credit_invoice"
                      className={`link-div ${getSidebarClass(
                        "/all_credit_invoice"
                      )}`}
                    >
                      All Credit Invoice
                    </Link>
                  </li>
                </ul>
              )}
            </li>
            <hr />

            {/* <li>
              <Link
                to="/DoctorSection"
                className={`link-div ${getSidebarClass("/doctor_section")}`}
              >
                <div>
                  <span className="fs-4 bi">
                    <FaUserDoctor />
                  </span>
                </div>
                <div>
                  <h3 className=" d-none d-sm-inline" id="navleft1">
                    Doctors
                  </h3>
                </div>
              </Link>
            </li>
            <hr /> */}

            <li>
              <Link
                to="/clinic-setting"
                className={`link-div ${getSidebarClass("/clinic-setting")}`}
              >
                <div>
                  <span className="fs-4 bi">
                    <IoSettings />
                  </span>
                </div>
                <div>
                  <h3 className=" d-none d-sm-inline" id="navleft1">
                    Setting
                  </h3>
                </div>
              </Link>
            </li>

            {/* <li className="nav-item mx-3">
              <Link to="/clinic-setting" color="white">
                <span className="fs-4 bi">
                  <IoSettings className="icon" color="white" />
                </span>
                <p style={{ color: "white" }}>Setting</p>
              </Link>
            </li> */}

            <hr />
            {/* <li>
              <div className="link-div">
                <div>
                  <i className="fs-4 bi bi-power" onClick={logout}></i>
                </div>
                <div className="text-light" onClick={logout} id="navleft1">
                  Logout
                </div>
              </div>
            </li>
            <hr /> */}
          </ul>
        </div>
      </div>
    </Wrapper>
  );
};

export default Sider;
const Wrapper = styled.div`
  /* .dropdown-menu {
  display: none; 
  position: absolute;
  background-color: white;
  border: 1px solid #ccc;
  padding: 10px;
  z-index: 1;
} */
  .drop {
    padding: 10px;
  }

  .drop li {
    list-style: none;
    font-size: 13px;
    text-align: center;
  }

  .drop li a {
    text-decoration: none;
    color: white;
  }

  .drop li a:hover {
    /* background-color: #8ae6ff; */
    color: #8ae6ff;
  }
  #navleft1 {
    font-size: 13px;
    margin-left: 0rem;
    color: white;
    @media screen and (max-width: 1200px) {
      font-size: 10px;
    }
  }
  #navleft2 {
    font-size: 12px;
    margin-left: 0rem;
    color: white;
  }
  #navleft {
    font-size: 12px;
    margin-left: -0.2rem;
    color: white;
  }
  #sidebar {
    width: 79%;
    // min-height: 100vh;
    height: 82rem;
    background-color: teal;
    // padding-top: 70px;
    z-index: 1 @media screen and (max-width: 768px) {
      width: 5rem;
      height: 212rem;
    }
    @media screen and (min-width: 768px) and (max-width: 1020px) {
      width: 5rem;
      height: 151rem;
    }
    @media screen and (min-width: 1020px) and (max-width: 1500px) {
      width: 96%;
    }
  }
  .bi {
    color: white;
  }

  li:hover {
    color: #8ae6ff;
  }

  .link-div {
    display: flex;
    justify-content: center;
    flex-direction: column;
    align-items: center;
    cursor: pointer;
  }
  a {
    text-decoration: none;
  }

  .active-nav {
    background-color: #66b2b2;
    padding: 0.4rem;
    box-shadow: rgba(0, 0, 0, 0.1) 0px 4px 12px;
  }
`;
