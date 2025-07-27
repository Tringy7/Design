<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
            <!DOCTYPE HTML>
            <html>

            <head>
                <title>Shoeshop</title>
                <meta charset="utf-8">
                <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

                <link href="https://fonts.googleapis.com/css?family=Montserrat:300,400,500,600,700" rel="stylesheet">
                <link href="https://fonts.googleapis.com/css?family=Rokkitt:100,300,400,700" rel="stylesheet">

                <!-- Animate.css -->
                <link rel="stylesheet" href="/client/css/animate.css">
                <!-- Icomoon Icon Fonts-->
                <link rel="stylesheet" href="/client/css/icomoon.css">
                <!-- Ion Icon Fonts-->
                <link rel="stylesheet" href="/client/css/ionicons.min.css">
                <!-- Bootstrap  -->
                <link rel="stylesheet" href="/client/css/bootstrap.min.css">

                <!-- Magnific Popup -->
                <link rel="stylesheet" href="/client/css/magnific-popup.css">

                <!-- Flexslider  -->
                <link rel="stylesheet" href="/client/css/flexslider.css">

                <!-- Owl Carousel -->
                <link rel="stylesheet" href="/client/css/owl.carousel.min.css">
                <link rel="stylesheet" href="/client/css/owl.theme.default.min.css">

                <!-- Date Picker -->
                <link rel="stylesheet" href="/client/css/bootstrap-datepicker.css">
                <!-- Flaticons  -->
                <link rel="stylesheet" href="/client/fonts/flaticon/font/flaticon.css">

                <!-- Theme style  -->
                <link rel="stylesheet" href="/client/css/style.css">

            </head>

            <body>

                <div class="colorlib-loader"></div>

                <div id="page">
                    <jsp:include page="../layout/header.jsp" />

                    <div class="breadcrumbs">
                        <div class="container">
                            <div class="row">
                                <div class="col">
                                    <p class="bread">
                                        <span><a href="/homepage">Home</a></span> /
                                        <span><a href="/product">Products</a></span> /
                                        <span>Product Details</span>
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>


                    <div class="colorlib-product">
                        <div class="container">
                            <form:form action="/product/${product.id}" method="POST" modelAttribute="product">
                                <div class="row row-pb-lg product-detail-wrap">
                                    <div class="col-sm-8">
                                        <div class="product-entry border">
                                            <a href="#" class="prod-img">
                                                <img src="/admin/img/product/${product.image}" class="img-fluid">
                                            </a>
                                        </div>
                                    </div>

                                    <div class="col-sm-4">
                                        <div class="product-desc">
                                            <h3>${product.name}</h3>
                                            <p class="price">
                                                <span>
                                                    <fmt:formatNumber type="number" value="${product.price}" /> vnd
                                                </span>
                                            </p>
                                            <p>Brand ${product.brand}</p>
                                            <div class="size-wrap">
                                                <div class="block-26 mb-2">
                                                    <h4>Size</h4>
                                                    <ul>
                                                        <c:forEach items="${product.productDetails}" var="detail">
                                                            <li><a href="#">${detail.size}</a></li>
                                                        </c:forEach>
                                                    </ul>
                                                </div>
                                                <div class="block-26 mb-4">
                                                    <h4>Color</h4>
                                                    <ul>
                                                        <li><a href="#" style="font-size: smaller">${product.color}</a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="input-group mb-4">
                                                <span class="input-group-btn">
                                                    <button type="button" class="quantity-left-minus btn"
                                                        data-type="minus" data-field="">
                                                        <i class="icon-minus2"></i>
                                                    </button>
                                                </span>
                                                <input type="text" id="quantity" name="quantity"
                                                    class="form-control input-number" value="1" min="1" max="100">
                                                <span class="input-group-btn ml-1">
                                                    <button type="button" class="quantity-right-plus btn"
                                                        data-type="plus" data-field="">
                                                        <i class="icon-plus2"></i>
                                                    </button>
                                                </span>
                                            </div>
                                            <div class="row">
                                                <div class="col-sm-12 text-center">
                                                    <p class="addtocart"><a href="cart.html"
                                                            class="btn btn-primary btn-addtocart"><i
                                                                class="icon-shopping-cart"></i> Add to Cart</a></p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-sm-12">
                                        <div class="row">
                                            <div class="col-md-12 pills">
                                                <div class="bd-example bd-example-tabs">
                                                    <ul class="nav nav-pills mb-3" id="pills-tab" role="tablist">

                                                        <li class="nav-item">
                                                            <a class="nav-link active" id="pills-description-tab"
                                                                data-toggle="pill" href="#pills-description" role="tab"
                                                                aria-controls="pills-description"
                                                                aria-expanded="true">Description</a>
                                                        </li>
                                                    </ul>

                                                    <div class="tab-content" id="pills-tabContent">
                                                        <div class="tab-pane border fade show active"
                                                            id="pills-description" role="tabpanel"
                                                            aria-labelledby="pills-description-tab">
                                                            <p>${product.detailDesc}</p>
                                                        </div>

                                                        <div class="tab-pane border fade" id="pills-manufacturer"
                                                            role="tabpanel" aria-labelledby="pills-manufacturer-tab">
                                                            <p>Even the all-powerful Pointing has no control about the
                                                                blind
                                                                texts it is
                                                                an almost unorthographic life One day however a small
                                                                line
                                                                of blind text
                                                                by the name of Lorem Ipsum decided to leave for the far
                                                                World of
                                                                Grammar.</p>
                                                            <p>When she reached the first hills of the Italic Mountains,
                                                                she
                                                                had a last
                                                                view back on the skyline of her hometown Bookmarksgrove,
                                                                the
                                                                headline of
                                                                Alphabet Village and the subline of her own road, the
                                                                Line
                                                                Lane. Pityful
                                                                a rethoric question ran over her cheek, then she
                                                                continued
                                                                her way.</p>
                                                        </div>

                                                        <div class="tab-pane border fade" id="pills-review"
                                                            role="tabpanel" aria-labelledby="pills-review-tab">
                                                            <div class="row">
                                                                <div class="col-md-8">
                                                                    <h3 class="head">23 Reviews</h3>
                                                                    <div class="review">
                                                                        <div class="user-img"
                                                                            style="background-image: url(images/person1.jpg)">
                                                                        </div>
                                                                        <div class="desc">
                                                                            <h4>
                                                                                <span class="text-left">Jacob
                                                                                    Webb</span>
                                                                                <span class="text-right">14 March
                                                                                    2018</span>
                                                                            </h4>
                                                                            <p class="star">
                                                                                <span>
                                                                                    <i class="icon-star-full"></i>
                                                                                    <i class="icon-star-full"></i>
                                                                                    <i class="icon-star-full"></i>
                                                                                    <i class="icon-star-half"></i>
                                                                                    <i class="icon-star-empty"></i>
                                                                                </span>
                                                                                <span class="text-right"><a href="#"
                                                                                        class="reply"><i
                                                                                            class="icon-reply"></i></a></span>
                                                                            </p>
                                                                            <p>When she reached the first hills of the
                                                                                Italic Mountains,
                                                                                she had a last view back on the skyline
                                                                                of
                                                                                her hometown
                                                                                Bookmarksgrov</p>
                                                                        </div>
                                                                    </div>
                                                                    <div class="review">
                                                                        <div class="user-img"
                                                                            style="background-image: url(images/person2.jpg)">
                                                                        </div>
                                                                        <div class="desc">
                                                                            <h4>
                                                                                <span class="text-left">Jacob
                                                                                    Webb</span>
                                                                                <span class="text-right">14 March
                                                                                    2018</span>
                                                                            </h4>
                                                                            <p class="star">
                                                                                <span>
                                                                                    <i class="icon-star-full"></i>
                                                                                    <i class="icon-star-full"></i>
                                                                                    <i class="icon-star-full"></i>
                                                                                    <i class="icon-star-half"></i>
                                                                                    <i class="icon-star-empty"></i>
                                                                                </span>
                                                                                <span class="text-right"><a href="#"
                                                                                        class="reply"><i
                                                                                            class="icon-reply"></i></a></span>
                                                                            </p>
                                                                            <p>When she reached the first hills of the
                                                                                Italic Mountains,
                                                                                she had a last view back on the skyline
                                                                                of
                                                                                her hometown
                                                                                Bookmarksgrov</p>
                                                                        </div>
                                                                    </div>
                                                                    <div class="review">
                                                                        <div class="user-img"
                                                                            style="background-image: url(images/person3.jpg)">
                                                                        </div>
                                                                        <div class="desc">
                                                                            <h4>
                                                                                <span class="text-left">Jacob
                                                                                    Webb</span>
                                                                                <span class="text-right">14 March
                                                                                    2018</span>
                                                                            </h4>
                                                                            <p class="star">
                                                                                <span>
                                                                                    <i class="icon-star-full"></i>
                                                                                    <i class="icon-star-full"></i>
                                                                                    <i class="icon-star-full"></i>
                                                                                    <i class="icon-star-half"></i>
                                                                                    <i class="icon-star-empty"></i>
                                                                                </span>
                                                                                <span class="text-right"><a href="#"
                                                                                        class="reply"><i
                                                                                            class="icon-reply"></i></a></span>
                                                                            </p>
                                                                            <p>When she reached the first hills of the
                                                                                Italic Mountains,
                                                                                she had a last view back on the skyline
                                                                                of
                                                                                her hometown
                                                                                Bookmarksgrov</p>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-4">
                                                                    <div class="rating-wrap">
                                                                        <h3 class="head">Give a Review</h3>
                                                                        <div class="wrap">
                                                                            <p class="star">
                                                                                <span>
                                                                                    <i class="icon-star-full"></i>
                                                                                    <i class="icon-star-full"></i>
                                                                                    <i class="icon-star-full"></i>
                                                                                    <i class="icon-star-full"></i>
                                                                                    <i class="icon-star-full"></i>
                                                                                    (98%)
                                                                                </span>
                                                                                <span>20 Reviews</span>
                                                                            </p>
                                                                            <p class="star">
                                                                                <span>
                                                                                    <i class="icon-star-full"></i>
                                                                                    <i class="icon-star-full"></i>
                                                                                    <i class="icon-star-full"></i>
                                                                                    <i class="icon-star-full"></i>
                                                                                    <i class="icon-star-empty"></i>
                                                                                    (85%)
                                                                                </span>
                                                                                <span>10 Reviews</span>
                                                                            </p>
                                                                            <p class="star">
                                                                                <span>
                                                                                    <i class="icon-star-full"></i>
                                                                                    <i class="icon-star-full"></i>
                                                                                    <i class="icon-star-full"></i>
                                                                                    <i class="icon-star-empty"></i>
                                                                                    <i class="icon-star-empty"></i>
                                                                                    (70%)
                                                                                </span>
                                                                                <span>5 Reviews</span>
                                                                            </p>
                                                                            <p class="star">
                                                                                <span>
                                                                                    <i class="icon-star-full"></i>
                                                                                    <i class="icon-star-full"></i>
                                                                                    <i class="icon-star-empty"></i>
                                                                                    <i class="icon-star-empty"></i>
                                                                                    <i class="icon-star-empty"></i>
                                                                                    (10%)
                                                                                </span>
                                                                                <span>0 Reviews</span>
                                                                            </p>
                                                                            <p class="star">
                                                                                <span>
                                                                                    <i class="icon-star-full"></i>
                                                                                    <i class="icon-star-empty"></i>
                                                                                    <i class="icon-star-empty"></i>
                                                                                    <i class="icon-star-empty"></i>
                                                                                    <i class="icon-star-empty"></i>
                                                                                    (0%)
                                                                                </span>
                                                                                <span>0 Reviews</span>
                                                                            </p>
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
                                </div>
                            </form:form>
                        </div>
                    </div>

                    <jsp:include page="../layout/footer.jsp" />
                </div>

                <div class="gototop js-top">
                    <a href="#" class="js-gotop"><i class="ion-ios-arrow-up"></i></a>
                </div>

                <!-- jQuery -->
                <script src="/client/js/jquery.min.js"></script>
                <!-- popper -->
                <script src="/client/js/popper.min.js"></script>
                <!-- bootstrap 4.1 -->
                <script src="/client/js/bootstrap.min.js"></script>
                <!-- jQuery easing -->
                <script src="/client/js/jquery.easing.1.3.js"></script>
                <!-- Waypoints -->
                <script src="/client/js/jquery.waypoints.min.js"></script>
                <!-- Flexslider -->
                <script src="/client/js/jquery.flexslider-min.js"></script>
                <!-- Owl carousel -->
                <script src="/client/js/owl.carousel.min.js"></script>
                <!-- Magnific Popup -->
                <script src="/client/js/jquery.magnific-popup.min.js"></script>
                <script src="/client/js/magnific-popup-options.js"></script>
                <!-- Date Picker -->
                <script src="/client/js/bootstrap-datepicker.js"></script>
                <!-- Stellar Parallax -->
                <script src="/client/js/jquery.stellar.min.js"></script>
                <!-- Main -->
                <script src="/client/js/main.js"></script>

                <script>
                    $(document).ready(function () {

                        var quantitiy = 0;
                        $('.quantity-right-plus').click(function (e) {

                            // Stop acting like a button
                            e.preventDefault();
                            // Get the field name
                            var quantity = parseInt($('#quantity').val());

                            // If is not undefined

                            $('#quantity').val(quantity + 1);


                            // Increment

                        });

                        $('.quantity-left-minus').click(function (e) {
                            // Stop acting like a button
                            e.preventDefault();
                            // Get the field name
                            var quantity = parseInt($('#quantity').val());

                            // If is not undefined

                            // Increment
                            if (quantity > 0) {
                                $('#quantity').val(quantity - 1);
                            }
                        });

                    });
                </script>


            </body>

            </html>