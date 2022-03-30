/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.examen.model;

import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Trongar
 */
public class AlumnosList {
    private List alumnos;
    public AlumnosList(){
        alumnos = new ArrayList();
        alumnos.add("Edgar");
        alumnos.add("Gaby");
        alumnos.add("Jorge");
        alumnos.add("Mariana");
    }
    public List getAlumnos(){
        return this.alumnos;
    }
    public String getAlumno(int id){
        return this.alumnos.get(id).toString();
    }
}
