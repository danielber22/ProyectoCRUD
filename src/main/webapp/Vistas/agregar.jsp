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
        <link type="text/css" rel="stylesheet" href="resources/css/estilop.css"/>
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
                                        <h4 class="text-secondary">Agregar Registro</h4>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row col s10">
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
                            </form>
                        </div>
                    </div>
                </div>
            </div>    
        </div>
    </body>
</html>
