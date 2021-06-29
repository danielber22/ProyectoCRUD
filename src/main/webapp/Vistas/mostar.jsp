<%-- 
    Document   : mostar
    Created on : 06/25/2021, 05:06:29 PM
    Author     : Daniel
--%>

<%@page import="java.util.Iterator"%>
<%@page import="modelo.Personas"%>
<%@page import="java.util.List"%>
<%@page import="modeloDAO.PersonasDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div>
            <h1>Personas</h1>
            <a href="Controlador1?accion=agregar">Agregar Nuevo Registro</a>
            <table border = "1">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Nombre</th>
                        <th>Edad</th>
                        <th>Pais</th>
                        <th>Acciones</th>
                    </tr>
                </thead>
                <%
                    PersonasDAO dao = new PersonasDAO();
                    List<Personas> list = dao.mostrar();
                    Iterator<Personas> iter = list.iterator();
                    Personas per = null;
                    while(iter.hasNext()){
                        per = iter.next();
                %>
                <tbody>
                    <tr>
                        <th><%= per.getId()%></th>
                        <th><%= per.getNombre()%></th>
                        <th><%= per.getEdad() %></th>
                        <th><%= per.getPais() %></th>
                        <th>
                            <a>Editar</a>
                            <a>Eliminar</a>
                        </th>
                    </tr>
                    <% } %> 
                </tbody>
            </table>
        </div>
    </body>
</html>
