<!DOCTYPE html>

<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Your Cart</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css">

    <link href='https://use.fontawesome.com/releases/v5.7.2/css/all.css' rel='stylesheet'>
    <script type='text/javascript' src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.3/dist/jquery.slim.min.js"></script>

    <!-- Stylesheet -->
    <link rel="stylesheet" href="style.css">

</head>

<body>

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.theme.default.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.2.1/owl.carousel.js"></script>

    <br>

    <!-- Help for this section from: https://www.youtube.com/watch?v=BkK9m7jKjWg-->
    <!-- Cart -->
    <div class="container">
        <div class="card">
            <div class="card-header">
                <h2>Shopping Cart</h2>
            </div>
            <div class="card-body">
                <div class="table-responsive">
                    <table class="table table-bordered m-0">
                        <thead>
                            <tr>
                                <th class="text-center" style="min-width: 400px">
                                    Product Name &amp; Details
                                </th>
                                <th class="text-center" style="width: 100px">
                                    Price
                                </th>
                                <th class="text-center" style="width: 120px">
                                    Quantity
                                </th>
                                <th class="text-center" style="width: 100px">
                                    Total
                                </th>
                                <th class="text-center align-middle" style="width: 40px">
                                    <a href="#"
                                       class="shop-tooltip float-none text-light"
                                       title=""
                                       data-original-title="Clear cart"><i class="ino ion-md-trash"></i></a>
                                </th>
                            </tr>
                        </thead>
                        <tbody>

                            <!-- Row 1 Items -->
                            
                            <tr>
                                <td>
                                    <div class="media align-items-center">
                                        <img src="${THE_PRODUCT.imageLink}" class="d-block ui-w-40 ui-bordered mr-4" alt="Television" />
                                        <div>
                                            <h6>${THE_PRODUCT.productType}</h6>
                                            <small class="text-body-secondary">${THE_PRODUCT.productDescription}</small>
                                        </div>
                                    </div>
                                </td>
                                <td>
                                    <p class="text-right">$ ${THE_PRODUCT.productPrice}</p>
                                </td>
                                <td>
                                    <p class="text-right">1</p>
                                </td>
                                <td>
                                    <p class="text-right">$ ${THE_PRODUCT.productPrice}</p>
                                </td>
                                <td>
                                    <div class="media align-items-center">
                                        <i class="bi bi-trash"></i>
                                    </div>
                                </td>
                            </tr>

                            <!-- Row 2 Items -->
                            <tr>
                                <td>
                                    <div class="media align-items-center">
                                        <img src="IMAGES/office1.png" class="d-block ui-w-40 ui-bordered mr-4" alt="Printer" />
                                        <div>
                                            <h6>HP OfficeJet Pro 8034e Wireless Color All-in-One Printer with 1 Full Year Instant Ink</h6>
                                            <small class="text-body-secondary">
                                            Fast color print, copy, scan, fax, 2-sided prints, mobile/wireless printing Pro quality color for forms, reports, 
                                            brochures and presentations Includes 1 full year subscription for Instant Ink delivery service with HP+ activation.
                                            </small>
                                        </div>
                                    </div>
                                </td>
                                <td>
                                    <p class="text-right">$260</p>
                                </td>
                                <td>
                                    <p class="text-right">2</p>
                                </td>
                                <td>
                                    <p class="text-right">$520</p>
                                </td>
                                <td>
                                    <div class="media align-items-center">
                                        <i class="bi bi-trash"></i>
                                    </div>
                                </td>
                            </tr>
                            <!-- Row 3 Items -->
                            <tr>
                                <td>
                                    <div class="media align-items-center">
                                        <img src="IMAGES/comp1.jpg" class="d-block ui-w-40 ui-bordered mr-4" alt="Computer Tower" />
                                        <div>
                                            <h6>PowerSpec G439 Gaming PC</h6>
                                            <small class="text-body-secondary">
                                            Intel Core i7 12th Gen 12700KF 2.7GHz Processor Microsoft Windows 10 Pro NVIDIA GeForce RTX 3070 Ti 8GB GDDR6X
                                            </small>
                                        </div>
                                    </div>
                                </td>
                                <td>
                                    <p class="text-right">$1600</p>
                                </td>
                                <td>
                                    <p class="text-right">1</p>
                                </td>
                                <td>
                                    <p class="text-right">$1600</p>
                                </td>
                                <td>
                                    <div class="media align-items-center">
                                        <i class="bi bi-trash"></i>
                                    </div>
                                </td>
                            </tr>

                            <!-- Row 4 Items -->
                            <tr>
                                <td>
                                    <div class="media align-items-center">
                                        <img src="IMAGES/cam1.jpg" class="d-block ui-w-40 ui-bordered mr-4" alt="Camera" />
                                        <div>
                                            <h6>Canon - EOS Rebel T7 DSLR Video Two Lens Kit with EF-S 18-55mm and EF 75-300mm Lenses</h6>
                                            <small class="text-body-secondary"> 
                                            Take stunning pictures with vibrant colors using this EOS Rebel T7 camera. The built-in Wi-Fi makes printing 
                                            and sharing pictures quick and easy, and the auto-focus system creates crisp images at a moment's notice. 
                                            </small>
                                        </div>
                                    </div>
                                </td>
                                <td>
                                    <p class="text-right">$600</p>
                                </td>
                                <td>
                                    <p class="text-right">1</p>
                                </td>
                                <td>
                                    <p class="text-right">$600</p>
                                </td>
                                <td>
                                    <div class="media align-items-center">
                                        <i class="bi bi-trash"></i>
                                    </div>
                                </td>
                            </tr>
                        </tbody>
                    </table>

                    <!-- Proceed Button -->
                </div>
                <div class="container">
                    <div class="row checkoutButton justify-content-end" style="padding-top:50px;">
                        <a class="btn my-custom-checkoutButton btn-warning btn-lg" href="#" role="button">Proceed With Order</a>
                    </div>
                </div>
            </div>
        </div>
    </div>


    <!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js "></script> -->
    <!-- <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js "></script> -->
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <!-- <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js " integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo " crossorigin="anonymous "></script> -->
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js " integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1 " crossorigin="anonymous "></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js " integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM " crossorigin="anonymous "></script>

    <!-- My script -->
    <script type='text/javascript' src="myScript.js "></script>
    <script type='text/javascript' src="navSignedIn.js"></script>
    <script type='text/javascript' src="footer.js"></script>
</body>
</html>
