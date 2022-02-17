/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.*;
import jakarta.servlet.http.*;

/**
 *
 * @author julian
 */
public class operaciones extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Operaciones</title>");
            out.println("</head>");
            out.println("<body>");
            out.print("Este es el resultado: ");
            String n1 = request.getParameter("numero1");
            String n2 = request.getParameter("numero2");
            String suma = request.getParameter("suma");
            String resta = request.getParameter("resta");
            String multiplicacion = request.getParameter("multiplicacion");
            String division = request.getParameter("division");

            int resultado = 0;

            if (suma != null) {
                resultado = Integer.parseInt(n1) + Integer.parseInt(n2);
                out.println(resultado);
            }
            if (resta != null) {
                resultado = Integer.parseInt(n1) - Integer.parseInt(n2);
                out.println(resultado);
            }
            if (multiplicacion != null) {
                resultado = Integer.parseInt(n1) * Integer.parseInt(n2);
                out.println(resultado);
            }
            if (division != null && Integer.parseInt(n2) != 0) {
                resultado = Integer.parseInt(n1) / Integer.parseInt(n2);
                out.println(resultado);
            }else{
                out.print("No es posible dividir entre 0");
            }
            
            out.println("</body>");
            out.println("</html>");
        }
    }
}
