<%-- 
    Document   : form
    Created on : 4 feb. 2022, 00:55:59
    Author     : sanch
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Formulario</title>
    </head>
    <body>
        <h1>Escriba sus datos</h1>
        <form method="get" action="contacto.jsp">
            <input type="text" id="nombre" name="nombre" placeholder="Nombre"/><br>
            <input type="text" id="mail" name="mail" placeholder="Email"/><br>
            <input type="text" id="numero" name="numero" placeholder="Telefono"/><br>
            <input type="text" id="comentario" name="comentario" placeholder="Comentario"/><br>
            <input type="submit">
        </form>
    </body>
</html>
