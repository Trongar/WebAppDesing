/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.coment.model;

import java.util.*;
/**
 *
 * @author sanch
 */

public class Coment {
private String name, mail, coment;
    public Coment(String name, String mail, String coment){
     this.name = name;
     this.mail = mail;
     this.coment = coment;
    }
    public String getComent(){
        String coment = ""
                + "<b>"
                + name
                + "</b>"
                + " ("
                + mail
                + ") "
                + "dice:<br>"
                + "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"
                + this.coment
                + "<br>";
        return coment;
    }
    
}
