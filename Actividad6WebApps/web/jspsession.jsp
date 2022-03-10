<%-- 
    Document   : jspsession
    Created on : 7 mar. 2022, 21:08:05
    Author     : Trongar
--%>
<%@page contentType="text/html" session="true" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Session</title>
    </head>
    <body>
        <h1>Calcula Factorial</h1>
        <form action="jspsession.jsp" method="get">
            <label for="numero">Numero</label>
            <input type="number" name="numero" id="numero" value="0">
            <input type="submit" value="Calcular"/>
        </form>
        <% 
            if(request.getParameter("numero") != null){
                int numero = Integer.parseInt(request.getParameter("numero"));
                long store_fact = 1;
                int i =1;
                while(i <= numero){
                    store_fact = store_fact*i;
                    i++;
                }
                int intento = 0;
                if(session.getAttribute("intentos") == null){
                    session.setAttribute("intentos", intento);
                }else{
                    intento = (Integer) session.getAttribute("intentos");
                    intento++;
                    session.setAttribute("intentos", intento );
                    out.print("Resultado: !" + request.getParameter("numero") + " = " + store_fact );
                    out.print("Ejecuciones de la aplicacion en esta session: " + intento );
                }
            }else{
                session.setAttribute("intentos", 0);    
            }
            
        %>
    </body>
</html>
