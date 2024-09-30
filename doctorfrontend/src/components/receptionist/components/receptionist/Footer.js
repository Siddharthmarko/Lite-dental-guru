const Footer = () => {
    return (
        <footer style={{zIndex: "1"}} className="bg-body-tertiary text-center text-lg-start fixed-bottom">
            {/* Copyright */}
            <div
                className="text-center p-3"
                style={{ backgroundColor: "rgba(0, 0, 0, 0.05)" }}
            >
                © 2020 Copyright:
                <a className="text-body" href="https://mdbootstrap.com/">
                    MDBootstrap.com
                </a>
            </div>
            {/* Copyright */}
        </footer>
    );
};

export default Footer;
