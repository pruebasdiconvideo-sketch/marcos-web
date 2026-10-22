package com.utp.demo.servicio;

import org.springframework.data.jpa.repository.JpaRepository;

import com.utp.demo.modelo.Cliente;

public interface ClienteRepository extends JpaRepository<Cliente, String> {
    // Ya incluye métodos como findAll(), findById(), etc.
}
