<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Your Account</title>

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
<br>
    <div class="container p-0">
        <div class="row">
            <div class="col-md-5 col-xl-4">
                <div class="card">
                    <div class="card-header purpleHeader text-light" class="">
                        <h5 class="card-title mb-0">
                            <a href="accountSettingsSignedIn.html" class="text-reset text-decoration-none">Your Account</a>
                        </h5>
                    </div>
                    <ul class="list-group list-group-flush">
                        <a href="ordersSignedIn.html" class="text-reset text-decoration-none">
                            <li class="list-group-item">Orders & Purchases </li>
                        </a>
                        <a href="yourProductsSignedIn.html" class="text-reset text-decoration-none">
                            <li class="list-group-item">Your Products</li>
                        </a>
                        <a href="" class="text-reset text-decoration-none">
                            <li class="list-group-item">Your Wish List</li>
                        </a>
                        <a href="settingsSignedIn.html" class="text-reset text-decoration-none">
                            <li class="list-group-item">Account Settings</li>
                        </a>
                        <a href="settingsSignedIn.html#paymentMethods" class="text-reset text-decoration-none">
                            <li class="list-group-item">Payment Methods</li>
                        </a>
                        <a href="settingsSignedIn.html#shippingAddresses" class="text-reset text-decoration-none">
                            <li class="list-group-item">Shipping Adresses</li>
                        </a>
                    </ul>
                </div>
            </div>
            <div class="col-md-7 col-xl-8">
                <div class="card">
                    <div class="card-header purpleHeader text-light">
                        <div class="float-left">
                            <h5>Orders</h5>
                        </div>
                        <div class="float-right">
                            <h6>
                                <a href="ordersSignedIn.html" class="text-reset text-decoration-none">
                                    View All
                                    <i class="bi bi-caret-right-fill"></i>
                                </a>
                            </h6>
                        </div>
                    </div>
                    <div class="card-body">
                        <h6>Manage Orders</h6>
                        <p> See order history, tracking info, and more details when you order from GabesGateway.com</p>
                    </div>
                </div>
                <br>
                <div class="card">
                    <div class="card-header purpleHeader text-light">
                        <div class="float-left">
                            <h5>Your Products</h5>
                        </div>
                        <div class="float-right">
                            <h6>
                                View All
                                <i class="bi bi-caret-right-fill"></i>
                            </h6>
                        </div>
                    </div>
                    <div class="card-body">
                        <h6>See Your Products</h6>
                        <p>See your previous purchases, product details, and favorites when you order from GabesGateway.com</p>
                    </div>
                </div>
                <br>
                <div class="card">
                    <div class="card-header purpleHeader text-light border">
                        <div class="float-left">
                            <h5>Account Settings</h5>
                        </div>
                        <div class="float-right">
                            <h6>
                                View All
                                <i class="bi bi-caret-right-fill"></i>
                            </h6>
                        </div>
                    </div>
                    <div class="card-body">
                        <div class="row d-flex justify-content-center">
                            <div class="col-5">
                                <div class="row align-items-center shadow p-3 mb-5 bg-white rounded">
                                    <div class="col-8">
                                        <h6>About me</h6><br>
                                        <p>${THE_USER2.fname} ${THE_USER2.lname}</p><br>
                                        <p>${THE_USER2.email}</p>
                                    </div>
                                    <div><span class="align-middle ">
                                        <p class="mb-0 text-black font-weight-bold"><a class="text-primary mr-3" data-toggle="modal" data-target="#add-address-modal" href="#"><i class="bi bi-pencil-square"></i> EDIT</a> </p>
                                    </span></div>
                                </div>
                            </div>
                            <div class="col-7">
                                <div class=" align-items-center shadow p-3 mb-5 bg-white rounded">
                                    <div class="">
                                        <h6>Addresses</h6><br>
                                        <div class="row d-flex justify-content-center ">
                                            <div class="bg-white card addresses-item mb-4 shadow-sm col-5 mx-auto">
                                                <div class="gold-members ">
                                                    <div class="media">
                                                        <div class="media-body">
                                                            <h6 class="mb-1">Nickname</h6>
                                                            <p>${THE_USER2.shippingAddress} </p>
                                                            <p class="text-black font-weight-bold text-center pFontSizeSmall">
                                                                <a class="text-primary mr-3" data-toggle="modal" data-target="#add-address-modal" href="#"><i class="bi bi-pencil-square"></i> EDIT</a>
                                                                <a class="text-danger" data-toggle="modal" data-target="#delete-address-modal" href="#"><i class="bi bi-trash-fill"></i> DELETE</a>
                                                            </p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="bg-white card addresses-item mb-4 shadow-sm col-5 mx-auto">
                                                <div class="gold-members ">
                                                    <div class="media">
                                                        <div class="media-body">
                                                            <h6 class="mb-1">Nickname</h6>
                                                            <p>Adress Line </p>
                                                            <p class="text-black font-weight-bold text-center pFontSizeSmall">
                                                                <a class="text-primary mr-3" data-toggle="modal" data-target="#add-address-modal" href="#"><i class="bi bi-pencil-square"></i> EDIT</a>
                                                                <a class="text-danger" data-toggle="modal" data-target="#delete-address-modal" href="#"><i class="bi bi-trash-fill"></i> DELETE</a>
                                                            </p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="d-flex justify-content-center">
                                        <p class=" text-black font-weight-bold"><a class="text-primary mr-3" data-toggle="modal" data-target="#add-address-modal" href="#"><i class="bi bi-plus-square-fill"></i> ADD ADDRESS</a></p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
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