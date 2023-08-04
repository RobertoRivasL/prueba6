<%@ page import="com.example.demo.models.Capacitacion" %>
<%@ page import="com.example.demo.models.Contenedor" %>
<%@ page import="java.util.List" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="navbar.jsp"%>
<%@include file="footer.jsp"%>
<html>
<head>
    <title>Capacitaciones</title>
</head>
<body>
<div class="container">
    <h1 class="text-center">Capacitaciones</h1>

    <hr class="hr" style="height: 20px"/>
    <div class="table-responsive">
        <table class="table table-dark table-bordered">
            <thead >
            <tr>
                <th scope="col">Rut Cliente</th>
                <th scope="col">Día</th>
                <th scope="col">Hora</th>
                <th scope="col">Lugar</th>
                <th scope="col">Duración</th>
                <th scope="col">Cantidad Asistentes</th>
            </tr>
            </thead>
            <%
                List<Capacitacion> capacitaciones = Contenedor.listaCapacitacion;
                for (Capacitacion capacitacion: capacitaciones){
            %>
            <tbody>
            <tr>
                <td><%= capacitacion.getRutCliente()%></td>
                <td><%= capacitacion.getDia()%></td>
                <td><%= capacitacion.getHora()%></td>
                <td><%= capacitacion.getLugar()%></td>
                <td><%= capacitacion.getDuracion()%></td>
                <td><%= capacitacion.getCantidadAsistentes()%></td>
            </tr>
            </tbody>
            <%}%>
        </table>
    </div>



</div>





<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz"
        crossorigin="anonymous"></script>
</body>
</html>