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
        <div className="main" style={{ paddingTop: "60px" }}>
          <div className="container-fluid">
            <div className="row flex-nowrap ">
              <div className="col-lg-1 col-1 ps-0 position-fixed" id="sidebar">
                <Sider />
              </div>
              {/* for fix sider */}
              <div className="col-md-1"></div>
              {/* for fix sider */}
              <div className="col-lg-10 col-10 ps-0 ">
                <div className="container mt-5">
                  <div className="container-fluid ">
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
                        <div className="col-12">
                          <div class="row d-flex justify-content-around ">
                            <div class="col-xl-3 col-lg-3 col-md-5 col-sm-12 col-12">
                              <Link to="/calender-setting">
                                <div className="card">
                                  <div class="card-body">
                                    <h4 className="d-flex justify-content-center text-light align-items-center">
                                      Calender
                                    </h4>
                                  </div>
                                </div>
                              </Link>
                            </div>
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
                              <Link to="/branch">
                                <div className="card">
                                  <div class="card-body">
                                    <h4 className=" d-flex justify-content-center text-light align-items-center">
                                      Branch Setting
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
  overflow: hidden;
  nav {
    /* background-color: #004aad; */
  }
  .card {
    // background-color: #004aad;
    background-color: #008080;
    height: 8rem;
    &:hover {
      background-color: #0f737b;
    }
  }
  // .row {
  //   display: flex;
  //   justify-content: space-around;
  // }

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
