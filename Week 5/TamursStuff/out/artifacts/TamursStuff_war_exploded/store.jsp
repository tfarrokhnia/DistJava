<%@ page import="farrokhnia.model.Item" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML>

<html>
<head>
    <meta charset="utf-8">
    <title>Store</title>
    <%@ include file="includes/styles.jsp" %>
</head>
<body>

<!-- HEADER -->
<%@include file="includes/header.jsp" %>
<!-- /HEADER -->

<!-- MAIN CONTENT -->
<div class="container content-wrapper">


    <div class="row">

        <!-- SIDEBAR -->
        <div class="col-3">
            <div class="sidebar">
                <div class="side-sec">
                    <h2>Search</h2>
                    <form>
                        <input type="text">
                        <button type="submit">Go</button>
                    </form>
                </div>
                <div class="side-sec">
                    <h2>Browse by Category</h2>
                    <ul>
                        <li><a href="#">Product Type 1</a>
                            <ul>
                                <li><a href="#">Subtype 1-1</a></li>
                                <li><a href="#">Subtype 1-2</a></li>
                            </ul>
                        </li>
                        <li><a href="#">Product Type 2</a></li>
                        <li><a href="#">Product Type 3</a>
                            <ul>
                                <li><a href="#">Subtype 3-1</a></li>
                                <li><a href="#">Subtype 3-2</a></li>
                                <li><a href="#">Subtype 3-3</a></li>
                                <li><a href="#">Subtype 3-4</a></li>
                            </ul>
                        </li>
                        <li><a href="#">Product Type 4</a>
                            <ul>
                                <li><a href="#">Subtype 4-1</a></li>
                                <li><a href="#">Subtype 4-2</a></li>
                                <li><a href="#">Subtype 4-3</a></li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <!-- /SIDEBAR -->


        <!-- PRODUCTS -->
        <div class="col">

            <!-- HEADING -->
            <h1>Shop</h1>

            <!-- /HEADING -->

            <!-- CARDS -->

            <div class="row">
                <%
                    List<Item> itemList = (List<Item>)request.getAttribute("itemList");
                    for (Item item : itemList) {
                %>
                <div class="col-4 d-flex align-items-stretch">
                    <div class="card" style="margin-bottom: 1rem;">
                        <a href="item?id=<%=item.getId()%>">
                            <img class="card-img-top" src="images/<%=item.getImageUrl()%>" alt="a picture of <%=item.getName()%>">
                            <div class="card-body">
                                <h5 class="card-title"><%=item.getName()%></h5><span class="pricetag"><%=item.getPrice()%></span>
                            </div>
                        </a>
                    </div>
                </div>
                <% } %>
            </div>
            <!-- /CARDS -->
            <!-- PAGINATION -->
            <div class="row pagination">
                <div class="col">
                    <nav aria-label="Page navigation">
                        <ul class="pagination pagination-lg justify-content-center">
                            <li class="page-item"><a class="page-link" href="#">Previous</a></li>
                            <li class="page-item"><a class="page-link" href="#">1</a></li>
                            <li class="page-item"><a class="page-link" href="#">2</a></li>
                            <li class="page-item"><a class="page-link" href="#">3</a></li>
                            <li class="page-item"><a class="page-link" href="#">Next</a></li>
                        </ul>
                    </nav>
                </div>
            </div>
            <!-- PAGINATION -->
        </div>
        <!-- /PRODUCTS -->

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