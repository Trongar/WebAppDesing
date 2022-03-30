<%-- 
    Document   : calificacion
    Created on : 29 mar. 2022, 18:29:50
    Author     : Trongar
--%>

<%@page import="com.examen.model.AlumnosList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% String alumno = request.getParameter("id"); %>
        <%= new AlumnosList().getAlumno(Integer.parseInt(alumno)) %>
        <%= Math.floor(Math.random() * (10 - 5 + 1)) + 5 %>
    </body>
</html>
