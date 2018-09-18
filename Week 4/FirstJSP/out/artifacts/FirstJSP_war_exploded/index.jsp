<html>
<body>
<h1>Simple Servlet</h1>

<form method="get" action="simpleJSP.jsp">
    <fieldset>
        <legend>How would you like to search?</legend>
        <input type = "radio" name = "searchtype" value="fname"/>First Name<br>
        <input type = "radio" name = "searchtype" value="lname"/>Last Name<br>
        <input type = "radio" name = "searchtype" value="acctnum"/>Account Number<br>
        <input type = "radio" name = "searchtype" value="email"/>Email<br>
        <input type = "radio" name = "searchtype" value="ipaddr"/>iPad DR<br>
    </fieldset>

    <input name="searchvalue" type="text">
    <input type="submit">
</form>
</body>


</html>