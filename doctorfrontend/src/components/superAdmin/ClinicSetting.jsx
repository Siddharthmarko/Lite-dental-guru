import React from "react";
import styled from "styled-components";
import Header from "../receptionist/components/receptionist/Header";
import Sider from "../receptionist/components/receptionist/Sider";
import { Link } from "react-router-dom";

const ClinicSetting = () => {
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
                <div className="container mt-3">
                  <div className="container-fluid">
                    <div className="row mt-3">
                      {/* <div className="col-1"></div> */}

                      <div className="col-12">
                        <nav class="navbar navbar-expand-lg bg-body-tertiary">
                          <div class="container d-flex justify-content-center">
                            <h2 className="">Clinic Settings</h2>
                          </div>
                        </nav>
                      </div>
                      <div className="row mt-5">
                        {/* <div className="col-1"></div> */}
                        <div className="col-12">
                          <div class="row g-5">
                         
                            <div class="col-xl-3 col-lg-3 col-md-5 col-sm-12">
                              <Link to="/clinic-config-setting">
                                <div className="card">
                                  <div class="card-body">
                                    <h4 className=" d-flex justify-content-center text-light align-items-center">
                                      Clinic Configuration
                                    </h4>
                                  </div>
                                </div>
                              </Link>
                            </div>
                            <div class="col-xl-3 col-lg-3 col-md-5 col-sm-12">
                              <Link to="/treatment-setting">
                                <div className="card">
                                  <div class="card-body">
                                    <h4 className=" d-flex justify-content-center text-light align-items-center">
                                      Treatments
                                    </h4>
                                  </div>
                                </div>
                              </Link>
                            </div>
                            <div class="col-xl-3 col-lg-3 col-md-5 col-sm-12">
                              <Link to="/manage-staff">
                                <div className="card">
                                  <div class="card-body">
                                    <h4 className=" d-flex justify-content-center text-light align-items-center">
                                      Manage employee
                                    </h4>
                                  </div>
                                </div>
                              </Link>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
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

export default ClinicSetting;
const Container = styled.div`
  nav {
    /* background-color: #004aad; */
  }
  .card {
    background-color: #004aad;
    height: 8rem;
    &:hover {
      background-color: #000;
    }
  }

  .card-body {
    display: flex;
    justify-content: center;
  }

  a {
    text-decoration: none;
  }

  .select-style {
    border: none;
    background-color: #22a6b3;
    font-weight: bold;
    color: white;
  }
`;
