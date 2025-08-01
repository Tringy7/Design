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

                <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

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
                                    <p class="bread"><span><a href="/">Home</a></span> / <span>Shopping Cart</span></p>
                                </div>
                            </div>
                        </div>
                    </div>


                    <div class="colorlib-product">
                        <div class="container">
                            <div class="row row-pb-lg">
                                <div class="col-md-10 offset-md-1">
                                    <div class="process-wrap">
                                        <a href="#" class="process text-center active">
                                            <p><span>01</span></p>
                                            <h3>Shopping Cart</h3>
                                        </a>
                                        <div class="process text-center">
                                            <p><span>02</span></p>
                                            <h3>Checkout</h3>
                                        </div>
                                        <div class="process text-center">
                                            <p><span>03</span></p>
                                            <h3>Order Complete</h3>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row row-pb-lg">
                                <div class="col-md-12">
                                    <div class="product-name d-flex">
                                        <div class="one-forth text-left px-4">
                                            <span>Product Details</span>
                                        </div>
                                        <div class="one-eight text-center">
                                            <span>Size</span>
                                        </div>
                                        <div class="one-eight text-center">
                                            <span>Price</span>
                                        </div>
                                        <div class="one-eight text-center">
                                            <span>Quantity</span>
                                        </div>
                                        <div class="one-eight text-center">
                                            <span>Total</span>
                                        </div>
                                        <div class="one-eight text-center px-4">
                                            <span>Remove</span>
                                        </div>
                                    </div>
                                    <c:choose>
                                        <c:when test="${empty cartDetail}">
                                            <div>
                                                <div colspan="6" class="text-center py-4">
                                                    No product in my cart
                                                </div>
                                            </div>
                                        </c:when>

                                        <c:otherwise>
                                            <c:forEach items="${cartDetail}" var="cartDetailList" varStatus="status">
                                                <div class="product-cart d-flex">
                                                    <div class="one-forth">
                                                        <a href="/product/${cartDetailList.product.id}">
                                                            <div class="product-img"
                                                                style="background-image: url(/admin/img/product/${cartDetailList.product.image});">
                                                            </div>
                                                            <div class="display-tc">
                                                                <h3>${cartDetailList.product.name}</h3>
                                                            </div>
                                                        </a>
                                                    </div>
                                                    <div class="one-eight text-center">
                                                        <div class="display-tc">
                                                            <span>${cartDetailList.sizeProduct}</span>
                                                        </div>
                                                    </div>
                                                    <div class="one-eight text-center">
                                                        <div class="display-tc">
                                                            <span class="price">
                                                                <fmt:formatNumber type="number"
                                                                    value="${cartDetailList.product.price}" /> vnd
                                                            </span>
                                                        </div>
                                                    </div>
                                                    <div class="one-eight text-center">
                                                        <div class="display-tc">
                                                            <div
                                                                class="d-flex justify-content-center align-items-center">
                                                                <button type="button"
                                                                    class="quantity-left-minus btn btn-sm px-2 py-1"
                                                                    data-type="minus" data-field="">
                                                                    <i class="icon-minus2"></i>
                                                                </button>
                                                                <input type="text" name="quantity"
                                                                    class="form-control input-number text-center mx-2"
                                                                    value="${cartDetailList.quantity}"
                                                                    data-index="${status.index}" style="width: 60px;">
                                                                <button type="button"
                                                                    class="quantity-right-plus btn btn-sm px-2 py-1"
                                                                    data-type="plus" data-field="">
                                                                    <i class="icon-plus2"></i>
                                                                </button>
                                                            </div>
                                                        </div>
                                                    </div>


                                                    <div class="one-eight text-center">
                                                        <div class="display-tc">
                                                            <span class="price">
                                                                <fmt:formatNumber type="number"
                                                                    value="${cartDetailList.price * cartDetailList.quantity}" />
                                                                vnd
                                                            </span>
                                                        </div>
                                                    </div>
                                                    <form action="/cart/delete/${cartDetailList.id}" method="POST">
                                                        <input type="hidden" name="${_csrf.parameterName}"
                                                            value="${_csrf.token}" />

                                                        <div class="one-eight text-center">

                                                            <div class="display-tc">
                                                                <button type="submit"
                                                                    style="border: none; cursor: pointer;"
                                                                    class="closed" aria-label="Remove item"></button>
                                                            </div>
                                                        </div>
                                                    </form>
                                                </div>
                                            </c:forEach>
                                            <div class="row row-pb-lg">
                                                <div class="col-md-12">
                                                    <div class="total-wrap">
                                                        <div class="row">
                                                            <div class="col-sm-8">
                                                            </div>
                                                            <div class="col-sm-4 text-center">
                                                                <div class="total">
                                                                    <div class="sub">
                                                                        <p><span>Subtotal:</span> <span>
                                                                                <fmt:formatNumber type="number"
                                                                                    value="${totalPrice}" />
                                                                                vnd
                                                                            </span>
                                                                        </p>
                                                                        <p><span>Delivery:</span> <span>0.00 vnd</span>
                                                                        </p>
                                                                        <p><span>Discount:</span> <span>0.00 vnd</span>
                                                                        </p>
                                                                    </div>
                                                                    <div class="grand-total">
                                                                        <p><span><strong>Total:</strong></span>
                                                                            <span>
                                                                                <fmt:formatNumber type="number"
                                                                                    value="${totalPrice}" />
                                                                                vnd
                                                                            </span>
                                                                        </p>
                                                                    </div>

                                                                </div>
                                                                <form:form action="/cart" method="POST"
                                                                    modelAttribute="cart">
                                                                    <c:forEach items="${cart.cartDetails}"
                                                                        var="cartDetailList" varStatus="status">
                                                                        <form:input
                                                                            path="cartDetails[${status.index}].id"
                                                                            type="hidden" />
                                                                        <form:input
                                                                            path="cartDetails[${status.index}].quantity"
                                                                            type="hidden" cssClass="hidden-quantity"
                                                                            id="hidden-quantity-${status.index}" />
                                                                    </c:forEach>
                                                                    <form:input path="totalPrice" type="hidden"
                                                                        cssClass="hidden-quantity" />
                                                                    <button type="submit"
                                                                        class="btn btn-primary mt-3">Checkout</button>
                                                                </form:form>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </c:otherwise>
                                    </c:choose>
                                </div>
                            </div>

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
                    document.addEventListener('DOMContentLoaded', function () {
                        const cartItems = document.querySelectorAll('.product-cart');

                        // Hàm hỗ trợ
                        function parsePrice(priceStr) {
                            return parseInt(priceStr.replace(/[^\d]/g, '')) || 0;
                        }

                        function formatPrice(number) {
                            return number.toLocaleString('vi-VN') + " vnd";
                        }

                        function updateCartTotal() {
                            let subtotal = 0;
                            document.querySelectorAll('.product-cart').forEach(row => {
                                const priceCell = row.querySelectorAll('.price')[1];
                                if (priceCell) {
                                    subtotal += parsePrice(priceCell.textContent);
                                }
                            });

                            // Cập nhật Subtotal
                            const subEl = document.querySelector('.sub p:first-child span:nth-child(2)');
                            if (subEl) {
                                subEl.textContent = formatPrice(subtotal);
                            }

                            // Lấy phí ship nếu có
                            const shipEl = document.querySelector('.shipping');
                            let shipping = shipEl ? parsePrice(shipEl.textContent) : 0;

                            // Tính Grand Total
                            const grandTotal = subtotal + shipping;
                            const grandValueEl = document.querySelector('.grand-total span:nth-child(2)');
                            if (grandValueEl) {
                                grandValueEl.textContent = formatPrice(grandTotal);
                            }

                            // ✅ Cập nhật vào input hidden cart.totalPrice
                            const totalPriceInput = document.querySelector('input[name="totalPrice"]');
                            if (totalPriceInput) {
                                totalPriceInput.value = grandTotal;
                            }
                        }

                        cartItems.forEach(item => {
                            const minusBtn = item.querySelector('.quantity-left-minus');
                            const plusBtn = item.querySelector('.quantity-right-plus');
                            const quantityInput = item.querySelector('input[name="quantity"]');
                            const unitPriceEl = item.querySelectorAll('.price')[0];
                            const totalPriceEl = item.querySelectorAll('.price')[1];

                            function updateLineTotal() {
                                const quantity = parseInt(quantityInput.value) || 0;
                                const unitPrice = parsePrice(unitPriceEl.textContent);
                                const lineTotal = quantity * unitPrice;
                                totalPriceEl.textContent = formatPrice(lineTotal);

                                // cập nhật input hidden
                                const index = quantityInput.dataset.index;
                                const hiddenInput = document.getElementById('hidden-quantity-' + index);
                                if (hiddenInput) {
                                    hiddenInput.value = quantity;
                                }

                                updateCartTotal();
                            }


                            minusBtn.addEventListener('click', () => {
                                let quantity = parseInt(quantityInput.value) || 1;
                                if (quantity > 1) {
                                    quantityInput.value = quantity - 1;
                                    updateLineTotal();
                                }
                            });

                            plusBtn.addEventListener('click', () => {
                                let quantity = parseInt(quantityInput.value) || 1;
                                quantityInput.value = quantity + 1;
                                updateLineTotal();
                            });

                            quantityInput.addEventListener('change', updateLineTotal);

                            updateLineTotal();
                        });
                    });
                </script>

            </body>

            </html>