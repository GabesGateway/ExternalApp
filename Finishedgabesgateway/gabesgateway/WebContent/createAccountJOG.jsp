<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Create Account</title>

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css">

    <link href='https://use.fontawesome.com/releases/v5.7.2/css/all.css' rel='stylesheet'>
    <script type='text/javascript' src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.3/dist/jquery.slim.min.js"></script>

    <link rel="stylesheet" href="account.css">

</head>

<body>
    <div>
        <a href="home.html">
            <img src="IMAGES/GabesGatewayLogos/DataSquid_BlueWoutline.svg" class="logoSize mx-auto d-block"><br>
        </a>
        <!-- https://bbbootstrap.com/snippets/bootstrap-create-account-signup-form-input-groups-60573468 -->
        <div class="card">
            <div class="text-center">
                <h3>Create an account</h3> <span class="abt">Already have an account? <a href="signIn.html">Sign In</a></span> </div>
            <div class=" mt-3">
                <form action = "CreateUserServlet" method = "GET">
                	
                	<input type="hidden" name="command" value="ADD"/>
                	
                    <div class="input-group inputbox"> <input type="text" placeholder="First name" class="form-control required" onkeyup="enableSubmit()" name="Fname"> <input type="text" placeholder="Last name" class="form-control required" onkeyup="enableSubmit()" name="Lname"> </div>
                    <div class="inputbox"> <input type="email" class="form-control required" onkeyup="enableSubmit()" placeholder="Email" name="email"> </div>
                    <div class="inputbox"> <input type="Home Address" class="form-control required" onkeyup="enableSubmit()" placeholder="Home Address" name="ShippingAddress"> </div>
                    <div class="inputbox"> <input type="password" name="password" id="password" class="form-control required" onChange="onChange()" onkeyup="enableSubmit()" placeholder="Password" name="Password"> </div>
                    <div class="inputbox"> <input type="password" name="confirmPassword" id="confirmPassword" class="form-control required" onChange="onChange()" onkeyup="enableSubmit()" placeholder="Confirm Password"> </div>
                    <button class="mt-4 proceed btn btn-block d-flex flex-row justify-content-between align-items-center ">
                        <input type="submit" class="form-control createAccount" value="Create Account" disabled>
                    </button>

            </div>
            <div class="mt-1">
                <div class="form-check"> <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault"> <label class="form-check-label" for="flexCheckDefault"> I have read and agree to the <a href="#">Terms of service</a> </label> </div>
            </div>
            </form>
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
    <script type='text/javascript' src="account.js "></script>

</body>

</html>