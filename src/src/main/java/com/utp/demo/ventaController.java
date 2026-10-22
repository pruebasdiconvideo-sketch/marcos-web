package com.utp.demo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import com.utp.demo.modelo.Cliente;
import com.utp.demo.modelo.DetalleDTO;
import com.utp.demo.modelo.Factura;
import com.utp.demo.servicio.ClienteRepository;
import com.utp.demo.servicio.FacDetaRepository;
import com.utp.demo.servicio.FacturaRepository;
@Controller
//@RequestMapping("/ventas")
public class ventaController {
    @Autowired
    private ClienteRepository clienteRepo;

    @Autowired
    private FacturaRepository facturaRepo;

    @Autowired
    private FacDetaRepository detaRepo;

    @GetMapping("/clientes")
    public String listarClientes(Model model) {
        model.addAttribute("clientes", clienteRepo.findAll());
        return "clientes"; // thymeleaf: clientes.html
    }

    @GetMapping("/facturas/{cliCod}")
    public String verFacturas(@PathVariable String cliCod, Model model) {
        List<Factura> facturas = facturaRepo.findByClienteCodigo(cliCod);

    Cliente cliente = null;
    if (!facturas.isEmpty()) {
        cliente = facturas.get(0).getCliente(); // Usamos el cliente desde la primera factura
    } else {
        cliente = clienteRepo.findById(cliCod).orElse(null); // Si no tiene facturas, igual mostramos al cliente
    }

  
    model.addAttribute("cliente", cliente);


        model.addAttribute("facturas", facturas);
        return "facturas"; // thymeleaf: facturas.html
    }

    @GetMapping("/detalle/{facNro}")
    public String verDetalle(@PathVariable String facNro, Model model) {
        List<DetalleDTO> detalles = detaRepo.obtenerDetallesPorFactura(facNro);
          System.out.println("nro factura: " + facNro);
      
        System.out.println("Detalles obtenidos: " + detalles.size());
        double sm=0;
        for (DetalleDTO det : detalles) {
         sm=sm+det.getTotalParcial();
    System.out.println("Código: " + det.getCodigo() +
                       ", Nombre: " + det.getNombre() +
                       ", Precio: " + det.getPrecio() +
                       ", Cantidad: " + det.getCantidad() +
                       ", Total parcial: " );
}

           
        model.addAttribute("detalles", detalles);
         model.addAttribute("factura", facNro);
         model.addAttribute("total",sm);
        return "detalles"; // thymeleaf: detalle.html
    }



}
