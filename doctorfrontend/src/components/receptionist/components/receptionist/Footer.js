import styled from "styled-components";

const Footer = () => {
  return (
    <Wrapper>
      <footer className=" text-center text-lg-start  ">
        {/* Copyright */}
        <div
          className="text-center p-3"
          // style={{ backgroundColor: "rgba(0, 0, 0, 0.05)" }}
        >
          © 2024 Copyright:
          <a className="text-body" href="https://doaguru.com/">
            DoaGuru Infosystems
          </a>
        </div>
        {/* Copyright */}
      </footer>
    </Wrapper>
  );
};

export default Footer;
const Wrapper = styled.div``;
