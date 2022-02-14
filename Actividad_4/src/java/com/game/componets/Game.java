/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.game.componets;

/**
 *
 * @author sanch
 */
public class Game {
    private int[][] tablero;
 
    public Game() {
        this.inicializarTablero();
    }
 
    private void inicializarTablero() {
 
        /*
                    PIEDRA  PAPEL TIJERA
           PIEDRA      0      -1     1
           PAPEL       1       0    -1
           TIJERA     -1       1     0
         */
        int[][] t
                = {
                    {0, -1, 1},
                    {1, 0, -1},
                    {-1, 1, 0}
                };
 
        this.tablero = t;
 
    }
 
    public int ganador(Mano j1, Mano j2) {
        return this.tablero[j1.getIndex()][j2.getIndex()];
    }
}
