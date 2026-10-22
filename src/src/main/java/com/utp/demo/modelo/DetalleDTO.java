package com.utp.demo.modelo;

public class DetalleDTO {
 private String codigo;
    private String nombre;
    private Double precio;
    private Integer cantidad;

    public DetalleDTO( String codigo, String nombre, Double precio,Integer cantidad) {
        this.cantidad = cantidad;
        this.codigo = codigo;
        this.nombre = nombre;
        this.precio = precio;
    }

        public double getTotalParcial() {
        if (precio == null || cantidad == null) {
        return 0.0;
    }
        return precio * cantidad;
    }

    public String getCodigo() {
        return codigo;
    }

    public void setCodigo(String codigo) {
        this.codigo = codigo;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public Double getPrecio() {
        return precio;
    }

    public void setPrecio(Double precio) {
        this.precio = precio;
    }

    public Integer getCantidad() {
        return cantidad;
    }

    public void setCantidad(Integer cantidad) {
        this.cantidad = cantidad;
    }

    

}
