<%--
  Created by IntelliJ IDEA.
  User: Ganon
  Date: 01-08-2023
  Time: 23:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="navbar.jsp"%>
<%@include file="footer.jsp"%>
<html>
<head>
    <title>Contacto</title>
</head>
<body>

<div class="container text-center">
    <h1 class="text-center">Contacto</h1>

    <form action="formularioContacto" method="post" style="max-width: 30%; margin-left: 35%">
        <div class="container">
            <div class="form-outline mb-4">
                <label class="form-label" for="nombre">Nombre</label>
                <input name="nombre" type="text" id="nombre" class="form-control" />
                <label class="d-none text-danger" id="alertaNombre">Falta agregar el nombre</label>
            </div>

            <div class="form-outline mb-4">
                <label class="form-label" for="correo">Correo Electrónico</label>
                <input name="correo" type="email" id="correo" class="form-control" />
                <label class="d-none text-danger" id="alertaCorreo">Falta agregar el correo</label>
            </div>

            <div class="form-outline mb-4">
                <label class="form-label" for="mensajex">Mensaje</label>
                <textarea name="mensaje" class="form-control" id="mensajex" rows="4"></textarea>
                <label class="d-none text-danger" id="alertaMensaje">Falta agregar el mensaje</label>
            </div>

            <!-- Checkbox -->
            <div class="form-check d-flex justify-content-center mb-4">
                <input class="form-check-input me-2" type="checkbox" value="" id="mensaje" checked />
                <label class="form-check-label" for="mensaje">
                    Envíame una copia del mensaje
                </label>
            </div>

            <!-- Submit button -->
            <button type="submit" class="btn btn-dark btn-block mb-4">Enviar</button>
            <div class="center" style="margin-top:10px; margin-bottom: 20px;">
                <label class="d-none text-success " id="mensajeEnviado">Su mensaje ha sido enviado</label>
            </div>
        </div>
    </form>

</div>



<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz"
        crossorigin="anonymous"></script>
</body>
</html>
