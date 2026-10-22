package com.utp.demo.modelo;

import java.util.Date;
import java.util.List;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;
import jakarta.persistence.Temporal;
import jakarta.persistence.TemporalType;
@Entity
@Table(name = "fac_cabe")
public class Factura {
    @Id
    @Column(name = "fac_num")
    private String numero;
     @ManyToOne
    @JoinColumn(name = "cli_cod")
    private Cliente cliente;
    @OneToMany(mappedBy = "factura")
    private List<FacDeta> detalles;
     @Temporal(TemporalType.DATE)  // Importante: especificar tipo temporal
    @Column(name = "fac_fec")
    private Date fecha;
    @Column(name = "fac_igv")
    private String cigv; 


    public Date getFecha() {
        return fecha;
    }

    public void setFecha(Date fecha) {
        this.fecha = fecha;
    }

    public String getCigv() {
        return cigv;
    }

    public void setCigv(String cigv) {
        this.cigv = cigv;
    }

    public Cliente getCliente() {
        return cliente;
    }

    public void setCliente(Cliente cliente) {
        this.cliente = cliente;
    }

    public String getNumero() {
        return numero;
    }

    public void setNumero(String numero) {
        this.numero = numero;
    }

    public List<FacDeta> getDetalles() {
        return detalles;
    }

    public void setDetalles(List<FacDeta> detalles) {
        this.detalles = detalles;
    }

}
