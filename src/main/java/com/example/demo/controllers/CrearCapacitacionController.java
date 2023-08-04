package com.example.demo.controllers;

import com.example.demo.dao.CapacitacionDAO;
import com.example.demo.models.Capacitacion;
import com.example.demo.models.Contenedor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller

public class CrearCapacitacionController {

    @GetMapping("/crearCapacitacion")
    public String mostrarPaginaCapacitacion() {
        return "crearCapacitacionView";
    }

    @PostMapping("/formularioCapacitacion")

    public String postFormularioCapacitacion(@RequestParam("rutCliente") String rutCliente,
                                             @RequestParam("dia") String dia,
                                             @RequestParam("hora") String hora,
                                             @RequestParam("lugar") String lugar,
                                             @RequestParam("duracion") String duracion,
                                             @RequestParam("cantidadAsistentes") String cantidadAsistentes,
                                             Model model){

        model.addAttribute("rutCliente", rutCliente);
        model.addAttribute("dia", dia);
        model.addAttribute("hora", hora);
        model.addAttribute("lugar", lugar);
        model.addAttribute("duracion", duracion);
        model.addAttribute("cantidadAsistentes", cantidadAsistentes);

        Capacitacion capacitacion = new Capacitacion(rutCliente, dia, hora, lugar, duracion, cantidadAsistentes);
        //Contenedor.agregarCapacitacion(capacitacion);

        CapacitacionDAO capacitacionDAO = new CapacitacionDAO();

        capacitacionDAO.crearCapacitacion(capacitacion);

        return "crearCapacitacionView";
    }



}
