<%-- 
    Document   : transferencia
    Created on : 5/04/2022, 04:50:05 PM
    Author     : Chris
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Transferencia</title>
    </head>
    <body>
        <h1>Info de transferencia</h1>
        <div>
            <label>Cuenta de retiro</label>
            <select name="cuenta" id="cuenta">
                <option value="suma">Cuenta 1</option>
                <option value="resta">Cuenta 2</option>
            </select>
            <label>Cuenta de deposito</label>
            <input type="text" value="<% out.print( request.getAttribute("cuenta")); %>" name="cuentatrans" disabled>
        </div>
        <div>
            <label>Monto a pagar</label>
            <input type="text" name="montotrans">
        </div>
        <a href="cuenta.jsp"><button>Enviar</button></a>
    </body>
</html>
