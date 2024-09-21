import React from "react";
import styled from "styled-components";
import HeadBar from "../../receptionist/components/receptionist/Header";
import SideBar from "../../receptionist/components/receptionist/Sider"; 
import ExaminationPatient from "./ExaminationPatient";
import { useParams } from "react-router-dom";

const ExaminationDashBoardPatient = () => {
  const { tpid } = useParams();
  return (
    <>
      <Wrapper>
        <HeadBar />

        <div className="main">
          <div className="container-fluid">
            <div className="row flex-nowrap">
              <div className="col-lg-1 col-1 p-0">
                <SideBar />
              </div>
              <div className="col-lg-11 col-11 ps-0 m-2">
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
const Wrapper = styled.div``;
