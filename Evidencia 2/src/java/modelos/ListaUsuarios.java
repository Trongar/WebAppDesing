/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package modelos;

import java.util.ArrayList;
import java.util.List;
import java.util.Date;


/**
 *
 * @author Trongar
 */
public class ListaUsuarios {
    private List usuarios;
    public ListaUsuarios(){
        this.usuarios = new ArrayList();
        this.usuarios.add(new Usuario(12345, "Kevin", "Camacho", "2001-09-17", "credito", "noadmin", true));
        this.usuarios.add(new Usuario(22222, "Christian", "Herrera", "2001-09-17", "credito", "noadmin", false));
        this.usuarios.add(new Usuario(33333, "Valeria", "Arias", "2001-09-17", "credito", "noadmin", false));
        this.usuarios.add(new Usuario(44444, "Jorge", "Gonzalez", "2001-09-17", "credito", "noadmin", false));
        this.usuarios.add(new Usuario(55555, "Cesar", "Hernandez", "2001-09-17", "credito", "noadmin", false));
        this.usuarios.add(new Usuario(66666, "Isaac", "Herrera", "2001-09-17", "credito", "noadmin", false));
        this.usuarios.add(new Usuario(77777, "Nayeli", "Camacho", "2001-09-17", "credito", "noadmin", false));

    }
    public List getCuentas(){
        return this.usuarios;
    }
    public Usuario getCuenta(int id){
        return (Usuario) this.usuarios.get(id);
    }
}
