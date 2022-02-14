<%-- 
    Document   : form
    Created on : 5 feb. 2022, 01:34:21
    Author     : sanch
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form method="post" action="register.do">
            <input type="submit">
        </form>
        <p>
            <%
                List coments = (List)request.getAttribute("coments");
                out.print(coments);
                //Iterator it = coments.iterator();
                //while (it.hasNext()) {
                //out.print(it.next());
                //}
            %>
        </p>
    </body>
</html>
