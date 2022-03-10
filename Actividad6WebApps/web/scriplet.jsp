<%-- 
    Document   : scriplet
    Created on : 9 mar. 2022, 19:52:05
    Author     : Trongar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Ejemplo Scriplets</h1>
        <%! int numero = 7; %>        
        <%! long store_fact = 1; %>
        <%! int i =1; %>
        <% 
        while(i <= numero){
            store_fact = store_fact*i;
            i++;
        }
        %>
        <br>
        El factorial de <strong><%= numero %> </strong> es <strong><%= store_fact %></strong>
    </body>
</html>
