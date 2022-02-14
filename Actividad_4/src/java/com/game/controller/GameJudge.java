/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.game.controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.game.componets.*;
import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpSession;

/**
 *
 * @author sanch
 */
public class GameJudge extends HttpServlet {

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
        
        HttpSession session = request.getSession();
        session.setAttribute("roundWin", 0);
        session.setAttribute("roundLoose", 0);
        session.setAttribute("roundDraw", 0);
        session.setAttribute("gameWin", 0);
        session.setAttribute("gameLoose", 0);
        session.setAttribute("gameDraw", 0);
        
        
        RequestDispatcher view = request.getRequestDispatcher("partida.jsp");
        view.forward(request, response);
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
        String PLY = request.getParameter("jugador");
        int RNG = (int) Math.floor(Math.random()*2.99);
        Mano cliente = ("0".equals(PLY)) ? Mano.PIEDRA : ("1".equals(PLY)) ? Mano.PAPEL : Mano.TIJERA;
        Mano server = (RNG == 0) ? Mano.PIEDRA : (RNG == 1) ? Mano.PAPEL : Mano.TIJERA;
        Game game = new Game();
         
        int ganador = game.ganador(cliente, server);
        PrintWriter out = response.getWriter();
        
        request.setAttribute("ganador", ganador);
        request.setAttribute("cliente", cliente.getIndex());
        request.setAttribute("server", server.getIndex());
        
        HttpSession session = request.getSession();
        int roundWin = (int) session.getAttribute("roundWin");
        int roundLoose = (int) session.getAttribute("roundLoose");
        int roundDraw = (int) session.getAttribute("roundDraw");
        int gameWin = (int) session.getAttribute("gameWin");
        int gameLoose = (int) session.getAttribute("gameLoose");
        int gameDraw = (int) session.getAttribute("gameDraw");
        switch (ganador) {
            case -1:
                roundLoose++;
                session.setAttribute("roundLoose", roundLoose);
                break;
            case 1:
                roundWin++;
                session.setAttribute("roundWin", roundWin);
                break;
            default:        
                roundDraw++;
                session.setAttribute("roundDraw", roundDraw);
                break;
        }
        int best = 3;
        if(roundWin >= best || roundLoose >= best || roundDraw >= best){  
            if(roundWin >= best){
                gameWin++;
                session.setAttribute("gameWin", gameWin);
            }
            if(roundLoose >= best){
                gameLoose++;
                session.setAttribute("gameLoose", gameLoose);
            }
            if(roundDraw >= best){
                gameDraw++;
                session.setAttribute("gameDraw", gameDraw);
            }
            session.setAttribute("roundWin", 0);
            session.setAttribute("roundLoose", 0);
            session.setAttribute("roundDraw", 0);
        }
        RequestDispatcher view = request.getRequestDispatcher("partida.jsp");
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
