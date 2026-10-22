package com.utp.demo.servicio;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.utp.demo.modelo.Factura;

public interface FacturaRepository extends JpaRepository<Factura, String> {

    // Devuelve todas las facturas de un cliente por su código
    List<Factura> findByClienteCodigo(String cliCod);
}