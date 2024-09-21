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
      <div className='header'>
      <Header/>
      </div>

        <div className="main">
          <div className="container-fluid">
            <div className="row flex-nowrap">
            <div className="col-lg-1 col-1" id='sider'>
   <Sider/>
    </div>
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
`;
