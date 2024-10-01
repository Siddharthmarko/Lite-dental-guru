import React from "react";
import styled from "styled-components";
import Header from "../../receptionist/components/receptionist/Header";
import Sider from "../../receptionist/components/receptionist/Sider";
import { useParams } from "react-router-dom";
import ExaminationDashTwo from "./ExaminationDashTwo";

const ExaminationDashBoard = () => {
  const { id } = useParams();
  console.log(id);
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

              {/* for fixed sidebar */}
              <div className="col-md-1"></div>
              {/* for fixed sidebar */}

              <div className="col-lg-11 col-11 ps-0">
                <ExaminationDashTwo />
              </div>
            </div>
          </div>
        </div>
      </Wrapper>
    </>
  );
};

export default ExaminationDashBoard;
const Wrapper = styled.div`
  background-color: #f0f8ff;
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
