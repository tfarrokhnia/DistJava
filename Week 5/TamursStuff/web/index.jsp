<%@ page import="farrokhnia.model.Item" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML>

<html>
<head>
    <meta charset="utf-8">
    <title>Home Page</title>
    <%@include file="includes/styles.jsp" %>
</head>

<body>
<!-- HEADER -->
<%@ include file="includes/header.jsp" %>
<!-- /HEADER -->

<!-- MAIN CONTENT -->
<div class="container content-wrapper">

    <!-- SLIDER -->
    <div class="row">
        <div class="column">
            <div id="homepageSlider" class="carousel slide" data-ride="carousel">
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img class="d-block w-100" src="images/slider/1150x500-1.png" alt="First slide">
                    </div>
                    <div class="carousel-item">
                        <img class="d-block w-100" src="images/slider/1150x500-2.png" alt="Second slide">
                    </div>
                    <div class="carousel-item">
                        <img class="d-block w-100" src="images/slider/1150x500-3.png" alt="Third slide">
                    </div>
                </div>
                <a class="carousel-control-prev" href="#homepageSlider" role="button" data-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="carousel-control-next" href="#homepageSlider" role="button" data-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>
        </div>
    </div>
    <!-- /SLIDER -->

    <!-- FEATURED ITEMS -->
    <div class="row">
        <div class="column">
            <div class="card-deck">
        <%
            List<Item> itemList = (List<Item>)request.getAttribute("itemList");
            for (Item item: itemList) {
        %>
                <div class="card" style="width: 32%;">
                    <img class="card-img-top" src="images/<%=item.getImageUrl()%>" alt="a picture of <%=item.getName()%>">
                    <div class="card-body">
                        <h5 class="card-title"><%=item.getName()%></h5>
                        <p class="card-text"><%=item.getDescription()%></p>
                        <a href="item?id=<%=item.getId()%>" class="btn btn-primary">More Info</a>
                    </div>
                </div>
        <% } %>
            </div>
        </div>
    </div>
    <!-- /FEATURED ITEMS -->
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



