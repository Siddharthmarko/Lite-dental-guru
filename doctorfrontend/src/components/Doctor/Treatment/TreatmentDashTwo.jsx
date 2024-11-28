import React, { useEffect } from "react";
import styled from "styled-components";
import HeadBar from "../../receptionist/components/receptionist/Header";
import SideBar from "../../receptionist/components/receptionist/Sider";
import { useNavigate, useParams } from "react-router-dom";
import TreatmentForm from "./TreatmentForm";
import { useSelector } from "react-redux";
import TreatmentFormDocPay from "./TreatmentFormDocPay";

const TreatmentDashTwo = () => {
  const { exid, appoint_id, tp_id } = useParams();
  const navigate = useNavigate();
  const branchData = useSelector((state) => state.branch.currentBranch);
  console.log(branchData);

  useEffect(() => {
    const handlePopState = (event) => {
      // Push a new state to ensure the user stays on the current page
      window.history.pushState(null, "", window.location.href);
    };

    // Listen for popstate events
    window.addEventListener("popstate", handlePopState);

    // Push the initial state
    window.history.pushState(null, "", window.location.href);

    return () => {
      window.removeEventListener("popstate", handlePopState);
    };
  }, []);

  return (
    <>
      <Wrapper>
        <HeadBar />

        <div className="main">
          <div className="container-fluid">
            <div className="row flex-nowrap" style={{ paddingTop: "60px" }}>
              <div className="col-lg-1 col-1 p-0 position-fixed">
                <SideBar />
              </div>
              {/* for fixed sidebar */}
              <div className="col-md-1"></div>
              {/* for fixed sidebar */}
              <div className="col-lg-11 col-11 ps-0 m-0 mt-md-3 mt-lg-0">
                {branchData[0]?.doctor_payment === "Yes" ? (
                  <TreatmentFormDocPay />
                ) : (
                  <TreatmentForm />
                )}
              </div>
            </div>
          </div>
        </div>
      </Wrapper>
    </>
  );
};

export default TreatmentDashTwo;
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
      height: 62rem;
    }
  }
`;
