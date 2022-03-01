/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.tienda.web;

import com.tienda.models.Cart;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Iterator;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author sanch
 */
@WebServlet(name = "AddToCartServlet", urlPatterns = {"/Add-To-Cart"})
public class AddToCartServlet extends HttpServlet {

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
            ArrayList<Cart> cartList = new ArrayList();
            String id = request.getParameter("id");
            Cart cart =  new Cart(id);
            cart.setQuantity(1);
            
            HttpSession session = request.getSession();
            ArrayList<Cart> cart_list = (ArrayList) session.getAttribute("cart-list");
            
            
            
            if(cart_list == null){
                cartList.add(cart);
                session.setAttribute("cart-list", cartList);
                out.print("Se ha creado un session y se a añadido una lista");
                response.sendRedirect("Articles");
            }else{
                cartList = cart_list;
                boolean exist = false;
                    out.print("test");
                for (Cart c : cart_list) {
                    out.print("test");
                    if(c.getId().equals(cart.getId())){
                    out.print("test");

                        exist = true;
                        out.println("Product Exist");
                        response.sendRedirect("Articles");
                    } 
                }
                if(!exist){
                    out.print("test");
                    cartList.add(cart);
                    out.print("product added");
                    response.sendRedirect("Articles");
                }
            }
        }/**/
        /*try (PrintWriter out = response.getWriter()) {
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Login</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Login at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }*/
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
        processRequest(request, response);
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
