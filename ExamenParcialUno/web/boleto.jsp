<%-- 
    Document   : boleto
    Created on : 16 feb. 2022, 20:05:50
    Author     : sanch
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Boleto</title>
        <link rel="stylesheet" href="./assets/styles.css">
    </head>
    <body>
        <div class="container">
            <div id="logo">Logo</div>
            <div id="folio">
                <% 
                out.print((String) request.getAttribute("folio"));
                %>
            </div>
            <div id="evento">
                <% 
                out.print((String) request.getAttribute("event"));
                %>
            </div>

            <div id="nombre"><% 
                out.print
                (request.getParameter("first") 
                + " " 
                +request.getParameter("last"));
                %></div>
            <div id="tipo">
                <% 
                out.print((String) request.getAttribute("tipo"));
                %>
            </div>
            <div id="seccion">
                <% 
                out.print((String) request.getAttribute("seccion"));
                %>
            </div>
            <div id="asiento">
                <% 
                out.print((String) request.getAttribute("asiento"));
                %>
            </div>
            <div id="fecha">
                <% 
                out.print((String) request.getAttribute("fecha"));
                %>
            </div>
            <div id="lugar">
                <% 
                out.print((String) request.getAttribute("lugar"));
                %>
            </div>
            <div id="descripcion">
                <% 
                out.print((String) request.getAttribute("descripcion"));
                %>
            </div>
            <div id="codigo">
                <% 
                out.print((String) request.getAttribute("codigo"));
                %>
            </div>
        </div>
    </body>
</html>
