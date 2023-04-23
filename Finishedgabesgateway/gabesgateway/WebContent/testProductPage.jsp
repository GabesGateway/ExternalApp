<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Product | Gabe's Gateway</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css">

    <link href='https://use.fontawesome.com/releases/v5.7.2/css/all.css' rel='stylesheet'>
    <script type='text/javascript' src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.3/dist/jquery.slim.min.js"></script>

    <!-- Stylesheet -->
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="product.css">

</head>

<body>

    <!-- https://bbbootstrap.com/snippets/bootstrap-5-ecommerce-product-page-template-search-trasition-effect-36647071 -->
    <div class="container mt-5 mb-5">	
        <div class="card">	
            <div class="row g-0">	
                <div class="col-md-6 border-end">	
                    <div class="d-flex flex-column justify-content-center">	
                        <div class="main_image">	
                            <img src= "${THE_PRODUCT.imageLink} "id="main_product_image1" width="350" alt="Product Image">	</div>	
                            <div class="thumbnail_images">	
                                <ul id="thumbnail">		
                            </ul>	
                        </div>	
                    </div>	
                </div>	
                <div class="col-md-6">	
                    <div class="p-3 right-side">	
                        <div class="d-flex justify-content-between align-items-center">	
                            <!-- <h3>Hisense - 75” Class U6H Series Quantum ULED 4K UHD Smart Google TV</h3>  -->
                            <h3>${THE_PRODUCT.productType}</h3>	
                            <span class="heart" data-toggle="tooltip" data-placement="top" title="Add to Wishlist">
                                <i class='bi bi-heart'></i>
                            </span>	
                        </div>	
                        <div class="mt-2 pr-3 content">	
                            <!-- <p>'7', 'TV(Hisense - 75” Class U6H Series Quantum ULED 4K UHD Smart Google TV)', '', 'Hisense continues its tradition of bringing affordable televisions with the latest technologies to the masses in the U6H series. In 2021, the U6G series made Quantum Dot Wide Color Gamut more accessible to the masses. In 2022, the U6H series expands on picture quality and audio upgrades and makes the transition to the Google TV operating system.', '700'
</p>	 -->				
							<p>${THE_PRODUCT.productDescription }</p>
                        </div>	
                        <!--  <h3 id="product1cost" class="mt-4">$699.99</h3> -->
                        <h3 id="product1cost" class="mt-4">$ ${THE_PRODUCT.productPrice }</h3> 	  		
                        <div class="buttons d-flex flex-row mt-5">	
                            <button class="btn btn-outline-dark buttonHover mx-3">Buy Now</button>	
                            <button class="btn btn-outline-dark buttonHover mx-3"><a href="cartEmpty.html">Add to Cart</a></button>	
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
    <script type='text/javascript' src="../myScript.js "></script>
    <script type='text/javascript' src="nav.js"></script>
    <script type='text/javascript' src="footer.js"></script>
    <script type='text/javascript' src="product.js"></script>
</body>

</html>