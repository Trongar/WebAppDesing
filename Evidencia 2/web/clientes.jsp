<%-- 
    Document   : clientes
    Created on : 6 abr. 2022, 19:26:19
    Author     : Trongar
--%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="modelos.ListaUsuarios"%>
<%@page import="modelos.Usuario"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            ListaUsuarios clientes = new ListaUsuarios();
            Iterator it = clientes.getCuentas().iterator();
            Usuario usuario;
            for(int i = 0; it.hasNext(); it.next()){
                usuario = clientes.getCuenta(i);
                out.println(usuario.getNombre() + " " + usuario.getApellidos() + "<br>");
                i++;
            }
            //while(it.hasNext()){
            //out.print("<br>"+it.next().getClass());
            //}
        %>
    </body>
</html>
