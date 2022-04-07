<%-- 
    Document   : altaCuenta
    Created on : 5/04/2022, 04:44:10 PM
    Author     : Chris
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alta</title>
    </head>
    <body>
        <h1>Alta de Cuenta</h1>
        <div>
            <form method="get" action="AccountManager">
                <div>
                    <label> No. de Cliente: </label>
                    <input type="text" name="num"/>
                </div>

                <div>
                    <label> No. de Cuenta: </label>
                    <input type="text" name="numc"/>
                </div>

                <div>
                    <label> Tipo de Cuenta:</label>
                    <input type="text" name="cuenta"/>
                </div>

                <div>
                    <label> Monto:</label>
                    <input type="text" name="monto"/>
                </div>
                
                <div>
                    <label> Fecha:</label>
                    <input type="date" name="date"/>
                </div>
                
                <div>
                    <input type="submit" name="Aceptar">
                </div>
            </form>
        </div>
    </body>
</html>
