package com.example.demo.dao;

import com.example.demo.models.Capacitacion;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.ArrayList;
import java.util.List;

public class CapacitacionDAO implements ICapacitacionDAO {

    private static final Logger logger = LoggerFactory.getLogger(CapacitacionDAO.class);

    List<Capacitacion> listaCapacitaciones = new ArrayList<>();
    @Override
    public List<Capacitacion> obtenerCapacitacion() {

        Capacitacion capacitacion1 = new Capacitacion("15999888-1", "4", "12:00", "Los Angeles", "10", "10");
        Capacitacion capacitacion2 = new Capacitacion("16776899-2", "16", "9:00", "Los Andes", "7", "17");
        Capacitacion capacitacion3 = new Capacitacion("12756829-2", "23", "10:00", "Santiago", "4", "8");
        listaCapacitaciones.add(capacitacion1);
        listaCapacitaciones.add(capacitacion2);
        listaCapacitaciones.add(capacitacion3);
        for (Capacitacion capacitacion : listaCapacitaciones) {
            System.out.println(capacitacion);
        }
        ;
        return listaCapacitaciones;
    }

    @Override
    public boolean crearCapacitacion(Capacitacion capacitacion) {
    boolean registrar = false;
    if (capacitacion!= null) {
        listaCapacitaciones.add(capacitacion);
        System.out.println(capacitacion);
        logger.info("Su capacitacion ha sido agregada");
        registrar=true;
    }
    return registrar;

    }
}
