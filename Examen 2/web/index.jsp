<%-- 
    Document   : index
    Created on : 29 mar. 2022, 17:34:27
    Author     : Trongar
--%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="com.examen.model.AlumnosList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%! 
            List alumnos = new AlumnosList().getAlumnos();
            Iterator it = alumnos.iterator();
        %>
        <table>
            <% 
                for(int i = 0; it.hasNext(); it.next()){
                    out.print("<tr><td>"+ alumnos.get(i) +"</td><td><a href='calificacion.jsp?id="+i+"'>ir...</a></td></tr>");
                    i++;
                }
            %>
        </table>
    </body>
</html>
