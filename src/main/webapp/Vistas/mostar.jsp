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
        <link type="text/css" rel="stylesheet" href="resources/css/estilop.css"/>
    </head>
    <body>
        <div class="container-scroller">
            <%--
                <div class="row col s12"> 
                    <h4 class="center-align">Registro de Personas</h4>
                </div>
            --%>
            <div class="container-fluid page-body-wrapper"> 
                <nav class="sidebar sidebar-offcanvas" id="sidebar">
                    <ul class="nav">
                        <li class="nav-item">
                            <a class="nav-link" href="#">
                                <span class="menu-title">Configuraciones</span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="Controlador1?accion=agregar">
                                <span class="menu-title">Nuevo Registro</span>
                            </a>
                        </li>
                    </ul>
                </nav>
                <div class="main-panel">
                    <div class="content-wrapper" id="bgarc01">
                        <div class="row up01">
                            <div class="col-md-12 grid-margin">
                                <div class="d-flex justify-content-between align-items-center">
                                    <div>
                                        <h4 class="text-secondary">Registros de Personas</h4>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row col s10">    
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
                                    while (iter.hasNext()) {
                                        per = iter.next();
                                %>
                                <tbody>
                                    <tr>
                                        <th><%= per.getId()%></th>
                                        <th><%= per.getNombre()%></th>
                                        <th><%= per.getEdad()%></th>
                                        <th><%= per.getPais()%></th>
                                        <th>
                                            <a class="btn waves-effect waves-light yellow darken-3" href="Controlador1?accion=editar&id=<%= per.getId()%>">Editar</a>
                                            <a href="#modalelim" class="btn modal-trigger red darken-3">Eliminar</a>
                                            <div id="modalelim" class="modal">
                                                <div class="modal-content">
                                                    <h4>Eliminar Registro</h4>
                                                    <p>¿Desea eliminar el registro seleccionado?</p>
                                                </div>
                                                <div class="modal-footer">
                                                    <a href="Controlador1?accion=mostrar" class="btn modal-close">Cerrar</a>
                                                    <a href="Controlador1?accion=eliminar&id=<%= per.getId()%>" class="btn red darken-3">Eliminar</a>
                                                </div>  
                                            </div>
                                        </th>
                                    </tr>
                                    <% }%> 
                                </tbody>
                            </table>
                        </div>
                    </div>        
                </div>
            </div>
        </div>
    <script type="text/javascript" src="js/materialize.js"></script>
    <script src= "https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0-rc.2/js/materialize.min.js">
    </script>
    <script>
        document.addEventListener('DOMContentLoaded', function() {
            var elems = document.querySelectorAll('.modal');
            var instances = M.Modal.init(elems);
        });
    </script>
    </body>
</html>
