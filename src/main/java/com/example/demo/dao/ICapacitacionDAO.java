package com.example.demo.dao;

import com.example.demo.models.Capacitacion;

import java.util.List;

public interface ICapacitacionDAO {

    public List<Capacitacion> obtenerCapacitacion();

    public boolean crearCapacitacion(Capacitacion capacitacion);

}