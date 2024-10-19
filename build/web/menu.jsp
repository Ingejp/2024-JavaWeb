<%-- 
    Document   : menu
    Created on : 10 oct 2024, 7:37:36
    Author     : JP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="jakarta.servlet.http.*, jakarta.servlet.*" %>
<%
     session = request.getSession(false);
    if (session == null || session.getAttribute("username") == null) {
        response.sendRedirect("login.jsp");
        return;
    }
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <head>
        <title>Menú</title>
        <meta charset="UTF-8">
        <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
        <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
        <script src="js/script.js"></script>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
    </head>
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-dark bg-primary">
        <a class="navbar-brand" href="menu.jsp">Home</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
          <li class="nav-item active">
            <a class="nav-link" href="#">Link1 <span class="sr-only">(current)</span></a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">Link2</a>
          </li>
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-expanded="false">
              Dropdown
            </a>
            <div class="dropdown-menu">
              <a class="dropdown-item" href="newjsp.jsp">Registro de Catedraticos</a>
              <a class="dropdown-item" href="index.html">Registro de Estudiantes</a>
              <div class="dropdown-divider"></div>
              <a class="dropdown-item" href="#">Something else here</a>
            </div>
          </li>
          <li class="nav-item">
            <a class="nav-link disabled">Disabled</a>
          </li>
        </ul>
        <form class="form-inline my-2 my-lg-0">
          <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
          <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
        </form>
      </div>
    </nav> 
    <div class="container mt-5">
        <h1>Bienvenido, <%= session.getAttribute("username") %>!</h1>
        <a href="LogoutServlet" class="btn btn-danger">Cerrar Sesión</a>

    <div class="container my-5">
        <div class="row">
            <!-- Card 1 -->
            <div class="col-md-4">
                <div class="card text-bg-primary mb-3">
                    <div class="card-header"><i class="fas fa-users me-2"></i>Usuarios Registrados</div>
                    <div class="card-body">
                        <h5 class="card-title"></h5>
                        <p class="card-text">Cantidad de usuarios registrados en el sistema.</p>
                    </div>
                </div>
            </div>

            <!-- Card 2 -->
            <div class="col-md-4">
                <div class="card text-bg-success mb-3">
                    <div class="card-header">Alumnos Inscritos</div>
                    <div class="card-body">
                        <h5 class="card-title">Segundo Semestre</h5>
                        <p class="card-text">Total de alumnos del sistema.</p>
                    </div>
                </div>
            </div>

            <!-- Card 3 -->
            <div class="col-md-4">
                <div class="card text-bg-warning mb-3">
                    <div class="card-header">Catedráticos Registrados</div>
                    <div class="card-body">
                        <h5 class="card-title">12</h5>
                        <p class="card-text">Lista de catedráticos</p>
                    </div>
                </div>
            </div>
        </div>

        <div class="row">
            <!-- Card 4 -->
            <div class="col-md-4">
                <div class="card text-bg-info mb-3">
                    <div class="card-header">Nuevos Mensajes</div>
                    <div class="card-body">
                        <h5 class="card-title">45</h5>
                        <p class="card-text">Mensajes recibidos en las últimas 24 horas.</p>
                    </div>
                </div>
            </div>

            <!-- Card 5 -->
            <div class="col-md-4">
                <div class="card text-bg-danger mb-3">
                    <div class="card-header">Reportes del Sistema</div>
                    <div class="card-body">
                        <h5 class="card-title">005</h5>
                        <p class="card-text">Reportes generales de usuarios y roles.</p>
                    </div>
                </div>
            </div>

            <!-- Card 6 -->
            <div class="col-md-4">
                <div class="card text-bg-secondary mb-3">
                    <div class="card-header">Tareas Pendientes</div>
                    <div class="card-body">
                        <h5 class="card-title">12</h5>
                        <p class="card-text">Tareas que deben completarse esta semana.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>

    </div>
</body>
</html>
