<%@ page import="farrokhnia.model.Item" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML>

<html>
<head>
    <meta charset="utf-8">
    <title>Contact</title>
    <%@include file="includes/styles.jsp" %>
</head>

<body>
<!-- HEADER -->
<%@include file="includes/header.jsp" %>
<!-- /HEADER -->

<!-- MAIN CONTENT -->
<%
    Item item = (Item)request.getAttribute("item");
%>
<div class="content-wrapper">
    <div class="container">
        <p><a href="store"> &#9664; Back to store</a></p>
        <div class="row">
            <div class="col-6">
                <img src="images/<%=item.getImageUrl()%>">
            </div>
            <div class="col-6">
                <div class="product-heading">
                    <h1><%=item.getName()%></h1>
                    <p class="price">Price: <%=item.getPrice()%></p>
                    <p><%=item.getDescription()%></p>
                </div>

                <h2>Features:</h2>
                <ul>
                    <li>Product feature one is great</li>
                    <li>The second feature is pretty cool to</li>
                    <li>Not gonna lie, the third product feature is killin' it.</li>
                    <li>The fourth product feature fell a bit short...</li>
                    <li>But the 5th feature really knocked it out of the park!</li>
                </ul>
                <button class="btn btn-warning btn-lg">Add to Cart</button>


            </div>
        </div>
        <div class="row">
            <div class="col">
                <h2>Similar Products</h2>
                <div class="card-deck">
                    <div class="card">
                        <div class="card-body">
                            <img src="images/featured/350x300-1.png" class="card-image-top">
                            <h3>Product Name</h3>
                            <button class="btn btn-primary">More</button>
                        </div>
                    </div>
                    <div class="card">
                        <div class="card-body">
                            <img src="images/featured/350x300-1.png" class="card-image-top">
                            <h3>Product Name</h3>
                            <button class="btn btn-primary">More</button>
                        </div>
                    </div>
                    <div class="card">
                        <div class="card-body">
                            <img src="images/featured/350x300-1.png" class="card-image-top">
                            <h3>Product Name</h3>
                            <button class="btn btn-primary">More</button>
                        </div>
                    </div>
                    <div class="card">
                        <div class="card-body">
                            <img src="images/featured/350x300-1.png" class="card-image-top">
                            <h3>Product Name</h3>
                            <button class="btn btn-primary">More</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>


</div>
<!-- /MAIN CONTENT -->

<!-- FOOTER -->
<%@include file="includes/footer.jsp" %>
<!-- /FOOTER-->

<!-- SCRIPTS -->
<%@include file="includes/scripts.jsp" %>
<!-- /SCRIPTS -->
</body>

</html>