/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.coment.model;

import com.coment.model.Coment;
import java.util.*;
/**
 *
 * @author sanch
 */
public class ComentList {
    private List coments = new ArrayList();
    public ComentList(){
        coments.add(" ");
    }
    public void add(Coment coment){
        coments.add(coment.getComent());
    }
    
    public List getComentList(){
        //Iterator it = coments.iterator();
        //String c = "";
        //while (it.hasNext()) {
        //c+=it.next();
        //}
        //return c;
        return (List) coments;
    }
}
