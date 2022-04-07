/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package modelos;

import java.util.Date;

/**
 *
 * @author Trongar
 */
public class Usuario {
    private int cuenta;
    private String nombre;
    private String apellidos;
    private String fecha;
    private String tipoCuenta;
    private String contrasena;
    private boolean admin;
    Usuario(int cuenta, String nombre, String apellidos, String fecha, String tipoCuenta, String contrasena, boolean admin ){
        this.cuenta = cuenta;
        this.nombre = nombre;
        this.apellidos = apellidos;
        this.fecha = fecha;
        this.tipoCuenta = tipoCuenta;
        this.contrasena = contrasena;
        this.admin = admin;
    }

    public boolean isAdmin() {
        return admin;
    }

    public void setAdmin(boolean admin) {
        this.admin = admin;
    }

    public int getCuenta() {
        return cuenta;
    }

    public void setCuenta(int cuenta) {
        this.cuenta = cuenta;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellidos() {
        return apellidos;
    }

    public void setApellidos(String apellidos) {
        this.apellidos = apellidos;
    }

    public String getFecha() {
        return fecha;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }

    public String getTipoCuenta() {
        return tipoCuenta;
    }

    public void setTipoCuenta(String tipoCuenta) {
        this.tipoCuenta = tipoCuenta;
    }

    public String getContrasena() {
        return contrasena;
    }

    public void setContrasena(String contrasena) {
        this.contrasena = contrasena;
    }
    
}
