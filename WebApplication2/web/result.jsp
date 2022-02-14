<%-- 
    Document   : result
    Created on : 4 feb. 2022, 22:12:10
    Author     : sanch
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Result</title>
    </head>
    <body>
        <h1 align="center">Beer Recommendations JSP</h1>
        <p>
            <%
                List styles = (List)request.getAttribute("styles");
                Iterator it = styles.iterator();
                while (it.hasNext()) {
                out.print("<br>try: "
                        + it.next());
                }
            %>
        </p>
    </body>
</html>
