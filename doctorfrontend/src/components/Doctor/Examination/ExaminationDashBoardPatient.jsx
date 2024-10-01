import React from "react";
import styled from "styled-components";
import HeadBar from "../../receptionist/components/receptionist/Header";
import SideBar from "../../receptionist/components/receptionist/Sider";
import ExaminationPatient from "./ExaminationPatient";
import { useParams } from "react-router-dom";
import Header from "../../receptionist/components/receptionist/Header";
import Sider from "../../receptionist/components/receptionist/Sider";

const ExaminationDashBoardPatient = () => {
  const { tpid } = useParams();
  return (
    <>
      <Wrapper>
        <div className="header">
          <Header />
        </div>

        <div className="main">
          <div className="container-fluid">
            <div className="row flex-nowrap" style={{ paddingTop: "60px" }}>
              <div className="col-lg-1 col-1 p-0 position-fixed" id="sidebar">
                <Sider />
              </div>

              <div className="col-lg-11 col-11 ps-5 ms-lg-5 ms-md-0 mt-3">
                <ExaminationPatient tpid={tpid} />
              </div>
            </div>
          </div>
        </div>
      </Wrapper>
    </>
  );
};

export default ExaminationDashBoardPatient;
const Wrapper = styled.div`
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
      height: 100vh;
    }
  }
`;
