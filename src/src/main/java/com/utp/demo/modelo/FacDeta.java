package com.utp.demo.modelo;

import jakarta.persistence.Column;
import jakarta.persistence.EmbeddedId;
import jakarta.persistence.Entity;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.MapsId;
import jakarta.persistence.Table;
@Entity
@Table(name = "fac_deta")
public class FacDeta {
    @EmbeddedId
    private FacDetaId id;
    @ManyToOne
    @MapsId("facNro")
 
@JoinColumn(name = "fac_num")
       private Factura factura;
    @ManyToOne
    @MapsId("artCod")
     @JoinColumn(name = "art_cod")
      private Articulo articulo;
    @Column(name = "art_can")
    private Integer cantidad;

    public FacDetaId getId() {
        return id;
    }

    public void setId(FacDetaId id) {
        this.id = id;
    }

    public Factura getFactura() {
        return factura;
    }

    public void setFactura(Factura factura) {
        this.factura = factura;
    }

    public Articulo getArticulo() {
        return articulo;
    }

    public void setArticulo(Articulo articulo) {
        this.articulo = articulo;
    }

    public Integer getCantidad() {
        return cantidad;
    }

    public void setCantidad(Integer cantidad) {
        this.cantidad = cantidad;
    }
   
}
