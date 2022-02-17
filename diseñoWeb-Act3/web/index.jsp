<!DOCTYPE html>
<!--
Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Html.html to edit this template
-->
<html>
    <head>
        <title>Calculadora</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <form action="operaciones" method="post">
            Indique el primer numero
            <input type="text" name="numero1" value=""><br>
            Indique el segundo numero
            <input type="text" name="numero2" value=""><br>

            <button type="submit" name="suma">Sumar</button>
            <button type="submit" name="resta">Restar</button>
            <button type="submit" name="multiplicacion">Multiplicar</button>
            <button type="submit" name="division">Division</button>
        </form>
    </body>
</html>
