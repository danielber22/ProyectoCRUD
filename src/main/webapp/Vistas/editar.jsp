<%-- 
    Document   : editar
    Created on : 06/25/2021, 05:06:58 PM
    Author     : Daniel
--%>

<%@page import="modelo.Personas"%>
<%@page import="modeloDAO.PersonasDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Editar Registro</title>
    </head>
    <body>
        <div>
            <%
                    PersonasDAO dao = new PersonasDAO();
                    int id = Integer.parseInt((String)request.getAttribute("idper"));
                    Personas p=(Personas)dao.list(id);
            %>
            <h1>Modificar Registro</h1>
            <form action="Controlador1">
                Nombre:<br>
                <input type="text" name="txtnom" value="<%= p.getNombre()%>"><br>
                Edad:<br>
                <input type="number" name="txtage" value="<%= p.getEdad()%>"><br>
                Pais:<br>
                <input type="text" name="txtpais" value="<%= p.getPais()%>"><br>
                <input type="hidden" name="txtid" value="">
                <input type="submit" name="accion" value="actualizar"><br>
                <a href="Controlador1?accion=mostrar">Regresar</a>
            </form>
        </div>
    </body>
</html>
