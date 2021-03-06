/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.taquilla.web;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author sanch
 */
@WebServlet(name = "TicketMaster", urlPatterns = {"/TicketMaster"})
public class TicketMaster extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet TicketMaster</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet TicketMaster at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //get ServletContext object.
        ServletContext context=getServletContext();  
        String event = context.getInitParameter("event");
        String folio = context.getInitParameter("folio");
        String type = context.getInitParameter("type");
        String section = context.getInitParameter("section");
        String pleace = context.getInitParameter("pleace");
        String date = context.getInitParameter("date");
        String address = context.getInitParameter("address");
        String description = context.getInitParameter("description");
        String code = context.getInitParameter("code");
        
        request.setAttribute("evento", event);
        request.setAttribute("folio", folio);
        request.setAttribute("tipo", type);
        request.setAttribute("seccion", section);
        request.setAttribute("asiento", pleace);
        request.setAttribute("fecha", date);
        request.setAttribute("lugar", address);
        request.setAttribute("descripcion", description);
        request.setAttribute("codigo", code);
        
        RequestDispatcher view = request.getRequestDispatcher("boleto.jsp");
        view.forward(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
