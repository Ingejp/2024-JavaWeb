<%-- 
    Document   : newjsp
    Created on : 12 oct 2024, 8:30:41
    Author     : JP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>PrograII - App Web</title>
        <meta charset="UTF-8">
        <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
        <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
        <script src="js/script.js"></script>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
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
         <div class="d-flex justify-content-around">
        <div class="p-3 bd-highlight">
        <h1>Formulario de Registro de Catedráticos</h1>
        <a href="NewServlet" > Click aqui </a><br><br>
        <form method="POST" id="form" name="form" action="NewServlet" >
            <div class="form-group">
                <label for="exampleInputName">Codigo Catedrático</label>
                <input class="form-control" type="text" placeholder="ingresar codigo" name="codigo" id="codigo" >
                <input type="hidden" id="control" name="control" value="GUARDAR">
            </div>
            <div class="form-group">
                <label for="exampleInputName">Nombre del Catedrático</label>
                <input class="form-control" type="text" placeholder="ingresar nombre" name="nombre" id="nombre" >
            </div>
            <div class="form-group">
                <label for="exampleInputName">Colegiado</label>
                <input class="form-control" type="text" placeholder="ingresar nombre" name="nombre" id="nombre" >
            </div>
            <div class="form-group">
                <label for="exampleInputName">Profesion</label>
                <input class="form-control" type="text" placeholder="ingresar nombre" name="nombre" id="nombre" >
            </div>
            <div class="form-group">
                <label for="exampleInputName">Telefono</label>
                <input class="form-control" type="text" placeholder="ingresar nombre" name="nombre" id="nombre" >
            </div>
            <div class="form-group">
              <label for="exampleInputEmail1">Correo</label>
              <input type="email" class="form-control"  aria-describedby="emailHelp" name="correo" id="correo"  >
              <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
            </div>
            
            <br>
            <button type="submit" class="btn btn-primary">Guardar</button>
            <button type="button" onclick="enviarFormularioOpcion2()" class="btn btn-success">Guardar con JS</button>
             <button type="button" onclick="limpiarTabla()" class="btn btn-danger">Cancelar</button>
             <button type="button" onclick="mostrarAlumnos()" class="btn btn-primary">Mostrar</button>
             <button type="button" class="btn btn-outline-success">Ejemplo</button>
        </form>   
        </div>
       <div class="p-3 bd-highlight">
            <div class="container" id="container2">
                <table class="table table-striped table-hover" id="tabla1">
                    <thead class="table-dark">
                        <tr>
                            <td>Codigo de Catedrático</td>
                            <td>Nombre del Catedrático</td>
                            <td>Colegiado</td>
                            <td>Profesion</td>
                            <td>Correo Institucional</td>
                        </tr>
                    </thead>
                    <tbody id="bodyTable">

                    </tbody>                     
                </table>
            </div>
        </div>
        </div>
    </body>
</html>
