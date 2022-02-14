<%-- 
    Document   : result
    Created on : 5 feb. 2022, 00:10:44
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
        <h1 align="center">Recomendacion de peliculas JSP</h1>
        <p>
            <%
                List movies = (List)request.getAttribute("movies");
                out.print(movies);
                Iterator it = movies.iterator();
                while (it.hasNext()) {
                out.print("<br>Recomendamos: "
                        + it.next());
                }
            %>
        </p>
    </body>
</html>
