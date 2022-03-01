/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.tienda.models;

import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author sanch
 */
public class Catalogo {
    public List getNovedades() {
        List books = new ArrayList();
        books.add("5645618547");
        books.add("1914481178");
        books.add("1642002224");
        books.add("9544007733");
        books.add("1912656612");
        books.add("1800642024");
        return (books);
    }
    public List getPopular(){
        List books = new ArrayList();
        books.add("1430261463");
        books.add("1800642024");
        books.add("3642417043");
        books.add("3319692992");
        books.add("3030157458");
        books.add("9400770618");
        return (books);
    }
}
