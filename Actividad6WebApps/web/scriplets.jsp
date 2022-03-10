<%-- 
    Document   : scriplet
    Created on : 7 mar. 2022, 20:58:44
    Author     : Trongar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Scriptlets</title>
    </head>
    <body>
        <h1>Ejemplo Scriplets</h1>
        <% 
        int numero = 7;
        long store_fact = 1;
        int i =1;
        while(i <= numero){
            store_fact = store_fact*i;
            i++;
        }
        out.print("El Factorial de "+numero+" es "+store_fact);
        %>
    </body>
</html>