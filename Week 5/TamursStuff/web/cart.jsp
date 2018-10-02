<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML>

<html>
<head>
    <meta charset="utf-8">
    <title>Cart</title>
    <%@include file="includes/styles.jsp"%>
</head>

<body>

<!-- HEADER -->
<%@include file="includes/header.jsp"%>
<!-- /HEADER -->

<!-- MAIN CONTENT -->
<div class="content-wrapper">
    <div class="container">

        <h1>Shopping Cart</h1>

        <div class="row">
            <!-- CART ITEMS -->
            <div class="col">
                <div class="cart-item">
                    <div class="row">
                        <div class="col-3">
                            <img src="images/featured/350x300-1.png"/>
                        </div>
                        <div class="col-9">
                            <div class="row">
                                <div class="col-10">
                                    <h3>Product Name</h3>
                                    <span class="price">$98.99</span><span class="price-qty-divider">|</span><span class="qty">Qty: 2</span><br>
                                    <span class="delete-item"><a href="#">Delete</a></span>
                                </div>
                                <div class="col-2">
                                    <span class="line-total text-right">$197.98</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="cart-item">
                    <div class="row">
                        <div class="col-3">
                            <img src="images/featured/350x300-1.png"/>
                        </div>
                        <div class="col-9">
                            <div class="row">
                                <div class="col-10">
                                    <h3>Product Name</h3>
                                    <span class="price">$98.99</span><span class="price-qty-divider">|</span><span class="qty">Qty: 2</span><br>
                                    <span class="delete-item"><a href="#">Delete</a></span>
                                </div>
                                <div class="col-2">
                                    <span class="line-total">$197.98</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="cart-item">
                    <div class="row">
                        <div class="col-3">
                            <img src="images/featured/350x300-1.png"/>
                        </div>
                        <div class="col-9">
                            <div class="row">
                                <div class="col-10">
                                    <h3>Product Name</h3>
                                    <span class="price">$98.99</span><span class="price-qty-divider">|</span><span class="qty">Qty: 2</span><br>
                                    <span class="delete-item"><a href="#">Delete</a></span>
                                </div>
                                <div class="col-2">
                                    <span class="line-total">$197.98</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- TOTALS AND TAX -->
                <div class="totals-tax text-right">
                    <span class="subtotal">Subtotal: $593.94</span><br>
                    <span class="tax">Tax: $30.29</span><br>
                    <span class="total">Total: $624.23</span><br>
                    <button>Continue to Checkout</button>
                </div>
            </div>
            <!-- /TOTALS AND TAX -->

            <!-- /CART ITEMS-->

        </div>
    </div>

</div>
<!-- /MAIN CONTENT -->

<!-- FOOTER -->
<<%@include file="includes/footer.jsp"%>
<!-- /FOOTER-->

<!-- SCRIPTS -->
<%@include file="includes/scripts.jsp"%>
<!-- /SCRIPTS -->
</body>
</html>
