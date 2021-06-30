<%-- 
    Document   : agregar
    Created on : 06/25/2021, 05:06:38 PM
    Author     : Daniel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Agregar Registro</title>
        <link type="text/css" rel="stylesheet" href="resources/css/materialize.css"/>
         <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    </head>
    <body>
        <div>
            <h1 class="center-align">Agregar Registro</h1>
            <form action="Controlador1">
                Nombre:<br>
                <input type="text" name="txtnom"><br>
                Edad:<br>
                <input type="number" name="txtage"><br>
                Pais:<br>
                <input type="text" name="txtpais"><br>
                <button class="btn waves-effect waves-light" type="submit" name="accion" value="add">Agregar 
                    <i class="material-icons right">send</i>
                </button><br>
                <a href="Controlador1?accion=mostrar">Regresar</a>
            </form>
        </div>
    </body>
</html>
