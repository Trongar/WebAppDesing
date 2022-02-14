<%-- 
    Document   : contacto
    Created on : 4 feb. 2022, 01:01:40
    Author     : sanch
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Contacto</title>
    </head>
    <body>
        <h1>Hola <%= request.getParameter("nombre") %></h1>
        <p>Tu comentario ha sido recibido "<%= request.getParameter("comentario") %>"<br>
            Le contactaremos al numero: <%= request.getParameter("numero") %><br>
            Y enviaremos una notificacion a su correo: <%= request.getParameter("mail") %>
        </p>
    </body>
</html>
