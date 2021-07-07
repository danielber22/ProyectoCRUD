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
        <link type="text/css" rel="stylesheet" href="resources/css/materialize.css"/>
        <link type="text/css" rel="stylesheet" href="resources/css/estilop.css"/>
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    </head>
    <body>
        <div class="conteiner-scroller">
            <%--
            <div class="col s12">
                <h4 class="center-align">Modificar Registro</h4>
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
                            <a class="nav-link" href="Controlador1?accion=mostrar">
                                <span class="menu-title">Regresar</span>
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
                                        <h4 class="text-secondary">Editar Registro</h4>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row col s10">
                            <%
                                PersonasDAO dao = new PersonasDAO();
                                int id = Integer.parseInt((String) request.getAttribute("idper"));
                                Personas p = (Personas) dao.list(id);
                            %>
                            <form action="Controlador1">
                                Nombre:<br>
                                <input type="text" name="txtnom" value="<%= p.getNombre()%>"><br>
                                Edad:<br>
                                <input type="number" name="txtage" value="<%= p.getEdad()%>"><br>
                                Pais:<br>
                                <input type="text" name="txtpais" value="<%= p.getPais()%>"><br>
                                <input type="hidden" name="txtid" value="<%= p.getId()%>">
                                <input class="waves-effect waves-light btn" type="submit" name="accion" value="actualizar"><br>
                            </form>
                        </div>
                    </div>
                </div>
            </div>    
        </div>
    </body>
</html>
