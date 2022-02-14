/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.movie.model;

import java.util.*;

/**
 *
 * @author sanch
 */
public class Cinephile {
    public List getMovies(String gender) {
        List movies = new ArrayList();
        if (gender.equals("acion")){
        movies.add("Misión Imposible");
        movies.add("Transformers");
        } else if (gender.equals("horror")){
        movies.add("The house of the lake");
        movies.add("I see you");
        }else{
        movies.add("¿Donde esta el fantasma?");
        movies.add("Otra pelicula de comedia");
        }
        return (movies);
    }
}
