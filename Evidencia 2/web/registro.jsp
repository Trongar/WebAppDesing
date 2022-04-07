<%-- 
    Document   : registro
    Created on : 5/04/2022, 04:15:08 PM
    Author     : Chris
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registro</title>
    </head>
    <body>
        <h1>Registrarse</h1>
        <form method="post" action="BoletosServlet">
            <div>
                <label> Nombres: </label>
                <input type="text" name="nombre"/>
            </div>
            
            <div>
                <label> Apellidos:</label>
                <input type="text" name="apellidos"/>
            </div>
            
            <div>
                <label> E-Mail: </label>
                <input type="text" name="mail"/>
            </div>
            
            <div>
                <label> Teléfono:</label>
                <input type="text" name="tel"/>
            </div>
            
            <div>
                <label> Ciudad: </label>
                <input type="text" name="city"/>
            </div>
            
            <div>
                <label> Estado: </label>
                <input type="text" name="state"/>
            </div>
            
            <div>
                <label> País:</label>
                <input type="text" name="country"/>
            </div>
            
            <div>
                <label> Direccion: </label>
                <input type="text" name="direct"/>
            </div>
            
            <div>
                <label> Codigo Postal: </label>
                <input type="text" name="cp"/>
            </div>
            
            <div>
                <label> Contraseña: </label>
                <input type="text" name="password"/>
            </div>
            
            <div>
                <input type="submit" name="Aceptar">
            </div>
        </form>
    </body>
</html>
