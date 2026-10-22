package com.utp.demo.modelo;

import java.io.Serializable;
import java.util.Objects;

import jakarta.persistence.Column;
import jakarta.persistence.Embeddable;

@Embeddable
public class FacDetaId implements  Serializable {
  
    @Column(name = "fac_num")
    private String facNro;

    @Column(name = "art_cod")
    private String artCod;  

    public FacDetaId(String artCod, String facNro) {
        this.artCod = artCod;
        this.facNro = facNro;
    }

    
    public String getFacNro() {
        return facNro;
    }

    public void setFacNro(String facNro) {
        this.facNro = facNro;
    }

    public String getArtCod() {
        return artCod;
    }

    public void setArtCod(String artCod) {
        this.artCod = artCod;
    }
@Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof FacDetaId)) return false;
        FacDetaId that = (FacDetaId) o;
        return Objects.equals(facNro, that.facNro) &&
               Objects.equals(artCod, that.artCod);
    }

    @Override
    public int hashCode() {
        return Objects.hash(facNro, artCod);
    }
}
