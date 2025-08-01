<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
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
                <style>
                    .col-lg-8 {
                        background-color: whitesmoke;
                        height: 350px;
                    }
                </style>

            </head>

            <body>

                <div class="colorlib-loader"></div>

                <div id="page">
                    <jsp:include page="../layout/header.jsp" />

                    <div class="breadcrumbs">
                        <div class="container">
                            <div class="row">
                                <div class="col">
                                    <p class="bread"><span><a href="/">Home</a></span> / <span>Checkout</span></p>
                                </div>
                            </div>
                        </div>
                    </div>


                    <div class="colorlib-product">
                        <div class="container">
                            <div class="row row-pb-lg">
                                <div class="col-sm-10 offset-md-1">
                                    <div class="process-wrap">
                                        <a href="/cart">
                                            <div class="process text-center active">
                                                <p><span>01</span></p>
                                                <h3>Shopping Cart</h3>
                                            </div>
                                        </a>
                                        <a href="/checkout">
                                            <div class="process text-center active">
                                                <p><span>02</span></p>
                                                <h3>Checkout</h3>
                                            </div>
                                        </a>
                                        <div class="process text-center">
                                            <p><span>03</span></p>
                                            <h3>Order Complete</h3>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <form:form method="post" action="/checkout" modelAttribute="order">
                                <div class="row">
                                    <div class="col-lg-8">

                                        <h2>Billing Details</h2>
                                        <div class="row">

                                            <div class="col-md-12">
                                                <div class="form-group">
                                                    <label for="fname">Full name receiver</label>
                                                    <form:input path="receiverName" type="text" id="fname"
                                                        class="form-control" placeholder="Your firstname" />
                                                </div>
                                            </div>

                                            <div class="col-md-12">
                                                <div class="form-group">
                                                    <label for="fname">Address receiver</label>
                                                    <form:input path="receiverAddress" type="text" id="address"
                                                        class="form-control" placeholder="Enter Your Address" />
                                                </div>
                                            </div>

                                            <div class="col-md-12">
                                                <div class="form-group">
                                                    <label for="Phone">Phone number receiver</label>
                                                    <form:input path="receiverPhone" type="text" id="zippostalcode"
                                                        class="form-control" placeholder="" />
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-lg-4">
                                        <div class="row">
                                            <div class="col-md-12">
                                                <div class="cart-detail">
                                                    <h2>Cart Total</h2>
                                                    <ul>
                                                        <li>
                                                            <ul>
                                                                <c:forEach items="${cart.cartDetails}"
                                                                    var="cartDetailList" varStatus="status">
                                                                    <li><span>${cartDetailList.quantity} x
                                                                            ${cartDetailList.product.name}</span>
                                                                        <span>
                                                                            <fmt:formatNumber type="number"
                                                                                value="${cartDetailList.price}" /> vnd
                                                                        </span>
                                                                    </li>
                                                                </c:forEach>
                                                            </ul>
                                                        </li>
                                                        <li><span>Shipping</span> <span>0.00 vnd</span></li>
                                                        <li><span>Order Total</span> <span>
                                                                <fmt:formatNumber type="number" value="${totalPrice}" />
                                                                vnd
                                                            </span></li>
                                                    </ul>
                                                </div>
                                            </div>

                                            <div class="w-100"></div>

                                            <div class="col-md-12">
                                                <div class="cart-detail">
                                                    <h2>Payment Method</h2>
                                                    <div class="form-group">
                                                        <div class="col-md-12">
                                                            <div class="radio">
                                                                <label>
                                                                    <form:radiobutton path="paymentMethod"
                                                                        value="bank"/> Direct Bank Transfer <br>
                                                                </label>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="form-group">
                                                        <div class="col-md-12">
                                                            <div class="radio">
                                                                <label>
                                                                    <form:radiobutton path="paymentMethod"
                                                                        value="check" /> Check Payment <br>
                                                                </label>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="form-group">
                                                        <div class="col-md-12">
                                                            <div class="radio">
                                                                <label>
                                                                    <form:radiobutton path="paymentMethod"
                                                                        value="paypal" /> Paypal
                                                                </label>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-12 text-center">
                                                <p><button type="submit" class="btn btn-primary">Place an order</button></p>
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

            </body>
            

            </html>