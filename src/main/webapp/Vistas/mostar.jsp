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
        <title>Mostrando Registro de Personas</title>
        <link type="text/css" rel="stylesheet" href="resources/css/materialize.css"/>
    </head>
    <body>
        <div>
            <h3 class="center-align">Registro de Personas</h3>
            <a class="waves-effect waves-light btn" href="Controlador1?accion=agregar">Agregar Nuevo Registro</a>
        </div>
        <div class="m12">    
            <table class="highlight">
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
                            <a class="btn waves-effect waves-light yellow darken-3" href="Controlador1?accion=editar&id<%= per.getId()%>">Editar</a>
                            <a class="btn waves-effect waves-light red darken-3" href="Controlador1?accion=eliminar&id<%= per.getId()%>">Eliminar</a>
                        </th>
                    </tr>
                    <% } %> 
                </tbody>
            </table>
        </div>
    <script type="text/javascript" src="js/materialize.js"></script>
    </body>
</html>
