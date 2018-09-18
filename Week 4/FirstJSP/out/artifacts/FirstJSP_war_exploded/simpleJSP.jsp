<%@ page import="java.util.ArrayList" %>
<%@ page import="testpackage.FindColumns" %>
<%@ page import="testpackage.Individual" %>
<%@ page import="testpackage.Students" %>

<%--
  Created by IntelliJ IDEA.
  User: tamur
  Date: 9/12/18
  Time: 8:17 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>SimpleJSP</title>
</head>
<body>
    <h1>Simple JSP Web Page</h1>
    <p>The Test: </p>

    <%

        String test = "test";

        switch(test){
            case "test":
                System.out.println("tested");
                break;
            case "othertest":
                System.out.println("failed test");
        }

        Students theStudents = new Students();
        ArrayList<Individual> result;

        result = theStudents.findStudents(FindColumns.getValue(request.getParameter("searchtype")), request.getParameter("searchvalue"));
    %>

    <ul>
        <% for (Individual i: result) { %>
            <li><%=i.getAccountNumber()%> <%=i.getFname()%> <%=i.getLname()%></li>
        <%}%>
    </ul>

</body>
</html>
