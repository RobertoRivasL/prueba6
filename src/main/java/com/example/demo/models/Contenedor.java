package com.example.demo.models;

import lombok.Getter;
import lombok.Setter;

import java.util.ArrayList;
import java.util.List;

@Getter
@Setter
public class Contenedor {


    public static List<Capacitacion> listaCapacitacion = new ArrayList<>();

    public static void agregarCapacitacion(Capacitacion capacitacion){
        listaCapacitacion.add(capacitacion);
    }




}
