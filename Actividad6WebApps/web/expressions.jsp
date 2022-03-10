<%-- 
    Document   : primero
    Created on : 7 mar. 2022, 20:37:23
    Author     : Trongar
--%>

<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Expressions</title>
    </head>
    <body>
        <h1>Ejemplo de expresiones</h1>
        <br>
        <%=  new Date() %>
        <br>
        <%= "Pasar a mayusculas".toUpperCase() %>
        <br>
        <%= 45*3/2 %>
        <br>
        <%= Math.floor( Math.random()*100 ) %>
    </body>
</html>
