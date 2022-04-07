<%-- 
    Document   : index
    Created on : 5/04/2022, 04:07:40 PM
    Author     : Chris
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Inicio</title>
    </head>
    <body>
        <%
            if((request.getParameter("status")) != null){
                if((request.getParameter("status")).equals("error")){
                //out.print("error");
                out.print("<script type=\"text/javascript\">alert('El usuario o la contraseña no son validos')</script>");
                }
            }
 
            
        %>
        <h1>Banco</h1>
        <img src="https://images.vexels.com/media/users/3/129288/isolated/preview/52e06e07244a3590366669665ea540e3-icono-de-circulo-de-banco-3.png" style="width: 180px; height: 180px;">
        <div> Inicio de Sesión </div>
        <div>
            <form method="post" action="AccountManager">
            <div>
                <label> Numero de cliente </label>
                <input type="text" name="cuenta"/>
            </div>
            <div>
                <label> Clave de acceso</label>
                <input type="password" name="contrasena"/>
            </div>
            <div>
                <input type="submit" name="Aceptar">
            </div>
        </form>
        <p><a href='registro.jsp'>Registrarse</a></p>
        </div>
    </body>
</html>
