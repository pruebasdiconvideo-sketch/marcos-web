package com.utp.demo.servicio;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.utp.demo.modelo.DetalleDTO;
import com.utp.demo.modelo.FacDeta;
import com.utp.demo.modelo.FacDetaId;

@Repository
public interface FacDetaRepository extends JpaRepository<FacDeta, FacDetaId> {

    @Query("SELECT new com.utp.demo.modelo.DetalleDTO(a.codigo, a.nombre, a.precio, d.cantidad) " +
           "FROM FacDeta d JOIN d.articulo a " +
           "WHERE d.factura.numero = :facNum")
    List<DetalleDTO> obtenerDetallesPorFactura(@Param("facNum") String facNum);
}
