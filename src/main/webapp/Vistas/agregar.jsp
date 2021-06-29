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
        <title>JSP Page</title>
    </head>
    <body>
        <div>
            <h1>Agregar Registro</h1>
            <form action="Controlador1">
                Nombre:<br>
                <input type="text" name="txtnom"><br>
                Edad:<br>
                <input type="number" name="txtage"><br>
                Pais:<br>
                <input type="text" name="txtpais"><br>
                <input type="submit" name="accion" value="add"><br>
            </form>
        </div>
    </body>
</html>
