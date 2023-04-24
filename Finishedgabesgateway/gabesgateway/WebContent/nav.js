// https://stackoverflow.com/a/71291396/21507189

var navbar = ` 
<!-- Nav bar -->
<nav class="navbar navbar-dark text-light darkBlue pt-3" id="nav-placeholder">
    <div class="container">
        <div class="row">
            <div class="row menuAdjust">
                <!-- Logo Goes Here -->
                <a href="index.html">
                    <img src="IMAGES/GabesGatewayLogos/DataSquid_PurpleWoutline.svg " height="150 " class=" " alt=" ">
                </a>
                <!-- Drop Down Main Menu -->
                <!-- https://www.w3schools.com/bootstrap/bootstrap_dropdowns.asp -->
                <div class="dropdown ">
                    <button class="btn text-light navMenu" type="button" id="menu1" data-toggle="dropdown"><i class="bi bi-list fa-2x"></i> Menu</button>
                    <ul class="dropdown-menu " role="menu " aria-labelledby="menu1 ">
                        <li role="presentation "><a role="menuitem " tabindex="-1 " class="text-reset " href="categories.html ">Categories</a></li>
                        <li role="presentation "><a role="menuitem " tabindex="-1 " class="text-reset " href="# ">Top Deals</a></li>
                        <li role="presentation "><a role="menuitem " tabindex="-1 " class="text-reset " href="# ">What's New</a></li>
                        <li role="presentation "><a role="menuitem " tabindex="-1 " class="text-reset " href="shopByBrand.html ">Shop By Brand</a></li>
                    </ul>
                </div>
                <!-- Search Bar -->
                <!-- <div>
                    <form class="d-flex input-group searchBarAdjust ">
                        <input type="search " class="form-control rounded " placeholder="Search " aria-label="Search " aria-describedby="search-addon " />
                        <span class="input-group-text border-0 " id="search-addon ">
                        <i class="bi bi-search fa-lg "></i>
                    </span>
                    </form>
                </div> -->
            </div>
        </div>
    </div>
    <!-- Profile & Cart Menus -->
    <div class="row cartAdjust ">
        <div class="dropdown  ">
            <button class="btn text-light" type="button" id="menu1" data-toggle="dropdown"><i class="bi bi-person-fill fa-2x p-1 "></i> Profile</button>
            <ul class="dropdown-menu " role="menu " aria-labelledby="menu1 ">
                <li role="presentation "><a role="menuitem " tabindex="-1 " class="text-reset " href="signInJOG.jsp">Sign in</a></li>
                <li role="presentation "><a role="menuitem " tabindex="-1 " class="text-reset " href="createAccountJOG.jsp">Create Account</a></li>
            </ul>
        </div>
        
        <div class="dropdown ">
            <button class="btn text-light " type="button " id="menu1 " data-toggle="dropdown"><i class="bi bi-cart-fill fa-2x p-1 "></i> Cart
            <span class="dropDownAdjust"></span></button>
            <ul class="dropdown-menu " role="menu " aria-labelledby="menu1 ">
                <li role="presentation "><a role="menuitem " tabindex="-1 " class="text-reset " href="cartEmpty.html">Cart</a></li>
            </ul>
        </div>
        
    </div>

    <!-- search bar -->
    <!-- https://codepen.io/gungorbudak/pen/ooKNpz -->
    <div class="form-group has-search col-md-6 searchBarAdjustmet ">
        <span class="bi bi-search form-control-feedback"></span>
        <input type="text" class="form-control" placeholder="Search">
    </div>

    <br>
    <!-- Navigation-->
    <div class="container d-none d-lg-block ">
        <ul class="list-group list-group-horizontal-lg mx-auto justify-content-center">
            <li class="list-group-item bg-transparent border-0 ">
            <div class="dropdown ">
                <a href="categories.html " class="text-reset text-decoration-none navOptions ">
                    <p class="text-light ">Categories</p>
                </a>
                <span class="dropDownAdjust"></span></button>
            <ul class="dropdown-menu px-2" role="menu " aria-labelledby="menu1 ">
                <li role="presentation "><a role="menuitem " tabindex="-1 " class="text-reset text-decoration-none" href="./categories.html#tv ">TV</a></li>
                <li role="presentation "><a role="menuitem " tabindex="-1 " class="text-reset text-decoration-none" href="./categories.html#compAccess ">Computers & Accessories</a></li>
                <li role="presentation "><a role="menuitem " tabindex="-1 " class="text-reset text-decoration-none" href="./categories.html#cameras ">Cameras</a></li>
                <li role="presentation "><a role="menuitem " tabindex="-1 " class="text-reset text-decoration-none" href="./categories.html#phones ">Phones & Tablets</a></li>
                <li role="presentation "><a role="menuitem " tabindex="-1 " class="text-reset text-decoration-none" href="./categories.html#audio ">Audio</a></li>
                <li role="presentation "><a role="menuitem " tabindex="-1 " class="text-reset text-decoration-none" href="./categories.html#gaming ">Gaming & VR</a></li>
                <li role="presentation "><a role="menuitem " tabindex="-1 " class="text-reset text-decoration-none" href="./categories.html#movies ">Movies & Music</a></li>
                <li role="presentation "><a role="menuitem " tabindex="-1 " class="text-reset text-decoration-none" href="./categories.html#security ">Security & WiFi</a></li>
                <li role="presentation "><a role="menuitem " tabindex="-1 " class="text-reset text-decoration-none" href="./categories.html#office ">Office Supplies</a></li>
                <li role="presentation "><a role="menuitem " tabindex="-1 " class="text-reset text-decoration-none" href="./categories.html#toys ">Toys & Drones</a></li>
            </ul>
            </div>
            </li>
            <li class="list-group-item bg-transparent border-0 ">
            <div class="dropdown ">
                <a href="shopByBrand.html " class="text-reset text-decoration-none navOptions ">
                    <p class="text-light ">Shop By Brand</p>
                </a>
                <span class="dropDownAdjust"></span></button>
            <ul class="dropdown-menu px-2" role="menu " aria-labelledby="menu1 ">
                <li role="presentation "><a role="menuitem " tabindex="-1 " class="text-reset text-decoration-none" href="./shopByBrand.html#apple ">Apple</a></li>
                <li role="presentation "><a role="menuitem " tabindex="-1 " class="text-reset text-decoration-none" href="./shopByBrand.html#asus ">Asus</a></li>
                <li role="presentation "><a role="menuitem " tabindex="-1 " class="text-reset text-decoration-none" href="./shopByBrand.html#canon ">Canon</a></li>
                <li role="presentation "><a role="menuitem " tabindex="-1 " class="text-reset text-decoration-none" href="./shopByBrand.html#dell ">Dell</a></li>
                <li role="presentation "><a role="menuitem " tabindex="-1 " class="text-reset text-decoration-none" href="./shopByBrand.html#google ">Google</a></li>
                <li role="presentation "><a role="menuitem " tabindex="-1 " class="text-reset text-decoration-none" href="./shopByBrand.html#hp ">HP</a></li>
                <li role="presentation "><a role="menuitem " tabindex="-1 " class="text-reset text-decoration-none" href="./shopByBrand.html#logitech ">Logitech</a></li>
                <li role="presentation "><a role="menuitem " tabindex="-1 " class="text-reset text-decoration-none" href="./shopByBrand.html#microsoft ">Microsoft</a></li>
                <li role="presentation "><a role="menuitem " tabindex="-1 " class="text-reset text-decoration-none" href="./shopByBrand.html#nikon ">Nikon</a></li>
                <li role="presentation "><a role="menuitem " tabindex="-1 " class="text-reset text-decoration-none" href="./shopByBrand.html#nintendo ">Nintendo</a></li>
                <li role="presentation "><a role="menuitem " tabindex="-1 " class="text-reset text-decoration-none" href="./shopByBrand.html#razer ">Razer</a></li>
                <li role="presentation "><a role="menuitem " tabindex="-1 " class="text-reset text-decoration-none" href="./shopByBrand.html#redragon ">Redragon</a></li>
                <li role="presentation "><a role="menuitem " tabindex="-1 " class="text-reset text-decoration-none" href="./shopByBrand.html#ring ">Ring</a></li>
                <li role="presentation "><a role="menuitem " tabindex="-1 " class="text-reset text-decoration-none" href="./shopByBrand.html#samsung ">Samsung</a></li>
                <li role="presentation "><a role="menuitem " tabindex="-1 " class="text-reset text-decoration-none" href="./shopByBrand.html#sony ">Sony</a></li>
                
            </ul>
            </div>
            </li>
            <li class="list-group-item bg-transparent border-0 ">
                <a href="# " class="text-reset text-decoration-none navOptions ">
                    <p class="text-light ">Top Deals</p>
                </a>
            </li>
            <li class="list-group-item bg-transparent border-0 ">
                <a href="# " class="text-reset text-decoration-none navOptions ">
                    <p class="text-light ">What's New</p>
                </a>
            </li>
        </ul>
    </div>
</nav>`;

// inserting navbar in beginning of body
document.body.insertAdjacentHTML("afterbegin", navbar);