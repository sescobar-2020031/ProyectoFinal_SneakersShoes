<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- Bootstrap CSS -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ" crossorigin="anonymous"></script>
        <title>Menu Principal</title>
    </head>


    <body style="background-color: black">
        <header style="#f5cba7">
            <nav class="navbar navbar-light bg-light navbar-default navbar-inverse navbar-fixed-top" style="background: #f5cba7">
            <div class="container-fluid" style="background-color: #f5cba7">
                <a class="navbar-brand" style="background-color: #f5cba7" href="#">
                    <span class="text-dark fw-bold" style="background-color: #f5cba7;">Snickers Shoes</span>
                </a>
                <button style="background-color: #f5cba7" class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent" style="background: #f5cba7">
                    <ul class="nav nav-tabs" style="background: #f5cba7">
                        <li class="nav-item" style="background-color: #f5cba7;">
                            <a  style="margin-left: 10px; border: none;" class="nav-link btn btn-outline-light text-dark" href="Controlador?menu=Cliente" target="myFrame">Principal</a>
                        </li>
                        <li class="nav-item" style="background-color: #f5cba7;">
                            <a  style="margin-left: 10px; border: none" class="nav-link btn btn-outline-light text-dark" href="Controlador?menu=Cliente" target="myFrame">Cliente</a>
                        </li>
                        <li class="nav-item" style="background-color: #f5cba7;">
                            <a style="margin-left: 10px; border: none" class="nav-link btn btn-outline-light text-dark" href="Controlador?menu=Empleado&accion=Listar" target="myFrame">Empleado</a>
                        </li>
                        <li class="nav-item" style="background-color: #f5cba7;">
                            <a  style="margin-left: 10px; border: none" class="nav-link btn btn-outline-light text-dark" href="Controlador?menu=Cliente" target="myFrame">Producto</a>
                        </li>
                        <li class="nav-item" style="background-color: #f5cba7;">
                            <a  style="margin-left: 10px; border: none" class="nav-link btn btn-outline-light text-dark" href="Controlador?menu=RegistroVenta" target="myFrame">RegistroVenta</a>
                        </li>

                    </ul>
                    <div class="dropdown justify-content-end" style="padding-left: 10px; align-content: right">
                        <a style="border: none; padding: auto; align-content: right;" class="nav-link dropdown-toggle btn btn-light text-dark" href="#" id="navbarDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                            ${usuario.getNombresEmpleado()}
                        </a>
                        <div class="dropdown-menu text-center" aria-labelledby="dropdownMenuButton">
                            <a class="dropdown-item" href="#">
                                <img src="img/usuario.png" alt="" width="60"/>  
                            </a>
                            <a class="dropdown-item" href="#">${usuario.getUsuario()}</a>
                            <a class="dropdown-item" href="#">usuario@gmail.com</a>
                            <div class="dropdown-divider"></div>
                            <form action="Validar" method="POST">
                                <button name="accion" value="Salir" class="dropdown-item bg-danger" href="#">Salir</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </nav>
        </header>

        <div class="m-4" style="height: 525px; border: none; margin: 20px">
            <iframe name="myFrame" style=" height: 100%; width: 100%;" id="myFrame"></iframe>
        </div>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js" integrity="sha384-W8fXfP3gkOKtndU4JGtKDvXbO53Wy8SZCQHczT5FMiiqmQfUpWbYdTil/SxwZgAN" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.min.js" integrity="sha384-skAcpIdS7UcVUC05LJ9Dxay8AXcDYfBJqt1CJ85S/CFujBsIzCIv+l9liuYLaMQ/" crossorigin="anonymous"></script>
    </body>
</html>