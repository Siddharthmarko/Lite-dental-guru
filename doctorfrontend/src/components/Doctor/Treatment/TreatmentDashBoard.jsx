import React from "react";
import styled from "styled-components";
import HeadBar from "../../receptionist/components/receptionist/Header";
import SideBar from "../../receptionist/components/receptionist/Sider";
import { useParams } from "react-router-dom";
import NewTreatment from "./NewTreatment";

const TreatmentDashBoard = () => {
  const { tpid, appoint_id } = useParams();
  console.log(appoint_id);
  console.log(tpid);
  return (
    <>
      <Wrapper>
        <HeadBar />

        <div className="main">
          <div className="container-fluid">
            <div className="row flex-nowrap" style={{ paddingTop: "70px" }}>
              <div className="col-lg-1 col-1 p-0 position-fixed" id="sidebar">
                <SideBar />
              </div>
              {/* for fixed sidebar */}
              <div className="col-lg-1"></div>
              {/* for fixed sidebar */}
              <div className="col-lg-11 col-11 ps-0 m-2">
                <NewTreatment />
              </div>
            </div>
          </div>
        </div>
      </Wrapper>
    </>
  );
};

export default TreatmentDashBoard;
const Wrapper = styled.div`
  overflow-x: hidden;

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
