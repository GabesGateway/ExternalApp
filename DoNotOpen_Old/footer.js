var footer = `

<!-- Footer -->
    <!-- From: https://mdbootstrap.com/docs/standard/navigation/footer/ -->
    <footer class="text-center text-lg-start text-light darkBlue mt-5 ">
        <!-- Section: Social media -->
        <section class="d-flex justify-content-center justify-content-lg-between p-4 border-bottom ">
            <!-- Left -->
            <div class="me-5 d-none d-lg-block ">
                <span>Get connected with us on social networks:</span>
            </div>
            <!-- Left -->

            <!-- Right -->
            <div>
                <a href=" " class="me-4 text-reset ">
                    <i class="bi bi-facebook fa-2x p-1 "></i>
                </a>
                <a href=" " class="me-4 text-reset ">
                    <i class="bi bi-twitter fa-2x p-1 "></i>
                </a>
                <a href=" " class="me-4 text-reset ">
                    <i class="bi bi-google fa-2x p-1 "></i>
                </a>
                <a href=" " class="me-4 text-reset ">
                    <i class="bi bi-instagram fa-2x p-1 "></i>
                </a>
                <a href=" " class="me-4 text-reset ">
                    <i class="bi bi-linkedin fa-2x p-1 "></i>
                </a>
                <a href="https://github.com/GabesGateway/ExternalApp" class="me-4 text-reset ">
                    <i class="bi bi-github fa-2x p-1 "></i>
                </a>
            </div>
            <!-- Right -->
        </section>
        <!-- Section: Social media -->

        <!-- Section: Links  -->
        <section class=" ">
            <div class="container text-center text-md-start mt-5 ">
                <!-- Grid row -->
                <div class="row mt-3 ">
                    <!-- Grid column -->
                    <div class="col-md-3 col-lg-4 col-xl-3 mx-auto mb-4 lightPurpleText ">
                        <!-- Content -->
                        <a href="home.html" class="text-decoration-none text-reset">
                        <h6 class="text-uppercase fw-bold mb-4 ">
                            <img src="IMAGES/GabesGatewayLogos/DataSquidWhite.svg " height="60 "> Gabe's Gateway
                        </h6>
                        </a>
                        <p>
                            Find all your technology needs in one place.
                        </p>
                    </div>
                    <!-- Grid column -->

                    <!-- Grid column -->
                    <div class="col-md-2 col-lg-2 col-xl-2 mx-auto mb-4 ">
                        <!-- Links -->
                        <h6 class="text-uppercase fw-bold mb-4 lightPurpleText ">
                            Products
                        </h6>
                        <p class="darkPurpleText ">
                            <a href="categories.html " class="text-reset ">Categories</a>
                        </p>
                        <p class="darkPurpleText ">
                            <a href="#! " class="text-reset ">Top Deals</a>
                        </p>
                        <p class="darkPurpleText ">
                            <a href="#! " class="text-reset ">What's New</a>
                        </p>
                        <p class="darkPurpleText ">
                            <a href="shopByBrand.html " class="text-reset ">Shop By Brand</a>
                        </p>
                    </div>
                    <!-- Grid column -->

                    <!-- Grid column -->
                    <div class="col-md-3 col-lg-2 col-xl-2 mx-auto mb-4 text-muted ">
                        <!-- Links -->
                        <h6 class="text-uppercase fw-bold mb-4 lightPurpleText ">
                            Useful links
                        </h6>
                        <p class="darkPurpleText ">
                            <a href="#! " class="text-reset ">Pricing</a>
                        </p>
                        <p class="darkPurpleText ">
                            <a href="#! " class="text-reset ">Settings</a>
                        </p>
                        <p class="darkPurpleText ">
                            <a href="#! " class="text-reset ">Orders</a>
                        </p>
                        <p class="darkPurpleText ">
                            <a href="#! " class="text-reset ">Help</a>
                        </p>
                    </div>
                    <!-- Grid column -->

                    <!-- Grid column -->
                    <div class="col-md-4 col-lg-3 col-xl-3 mx-auto mb-md-0 mb-4 ">
                        <!-- Links -->
                        <h6 class="text-uppercase fw-bold mb-4 lightPurpleText ">Contact</h6>
                        <p class="darkPurpleText "><i class="bi bi-map me-3 "></i> Chicago, IL 60655, US</p>
                        <p class="darkPurpleText ">
                            <i class="bi bi-envelope me-3 "></i> info@gabesgateway.com
                        </p>
                        <p class="darkPurpleText "><i class="bi bi-phone me-3 "></i> + 01 234 567 88</p>
                        <p class="darkPurpleText "><i class="bi bi-printer me-3 "></i> + 01 234 567 89</p>
                    </div>
                    <!-- Grid column -->
                </div>
                <!-- Grid row -->
            </div>
        </section>
        <!-- Section: Links  -->

        <!-- Copyright -->
        <div class="text-center p-4 " style="background-color: rgba(0, 0, 0, 0.05); ">
            © 2023 Copyright:
            <a class="text-reset fw-bold " href="https://gabesgateway.com/ ">GabesGateway.com</a>
        </div>
        <!-- Copyright -->
    </footer>
    <!-- Footer -->

`;

// inserting navbar in beginning of body
document.body.insertAdjacentHTML("afterend", footer);