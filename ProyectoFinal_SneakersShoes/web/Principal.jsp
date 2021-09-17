<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/PrincipalCSS.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

            <!-- Bootstrap CSS -->
            <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ" crossorigin="anonymous"></script>
        <link rel="icon" href="img/Logotipo_SneakersShoes.ico">
        <title>Sneakers Shoes</title>
    </head>

    <body id="Body" style="background-color: white;">
        <nav class="navbar navbar-expand-lg navbar-light" id="NavL">
            <div class="container-fluid " id="Container">
                <a class="navbar-brand" href="#">
                    <img src="img/Logotipo_SneakersShoes.png" height="60px">
                    <span class="fw-bolder"><FONT COLOR="orange">Sneakers Shoes</FONT></span>
                </a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="nav nav-tabs" id="Btns">
                        <li class="nav-item">
                            <a class="nav-link text-light" href="Controlador?menu=PaginaPrincipal" target="myFrame">Principal</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link text-light" href="Controlador?menu=Cliente&accion=Listar" target="myFrame">Cliente</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link text-light" href="Controlador?menu=Empleado&accion=Listar" target="myFrame">Empleado</a>
                        </li>
                        <li class="nav-item">
                            <a  class="nav-link text-light" href="Controlador?menu=Producto&accion=Listar" target="myFrame">Producto</a>
                        </li>
                        <li class="nav-item">
                            <a  class="nav-link text-light" href="Controlador?menu=RegistrarVenta&accion=default" target="myFrame">RegistroVenta</a>
                        </li>
                       
                    </ul>

                </div>
                <div class="nav-item dropdown" id="Drop" >
                    <a class="nav-link dropdown-toggle text-dark " data-bs-toggle="dropdown" href="#" role="button" aria-expanded="false">
                        ${usuario.getNombresEmpleado()}</a>
                    <ul class="dropdown-menu  text-center">
                        <a class="dropdown-item" href="#">
                            <img src="img/usuario.png" alt="" width="60"/>
                        </a>
                        <a class="dropdown-item" href="#">${usuario.getUsuario()}</a>
                        <a class="dropdown-item" href="#">usuario@gmail.com</a>
                        <div class="dropdown-divider"></div>
                        <form action="Validar" method="POST">
                            <button name="accion" value="Salir" class="dropdown-item bg-danger" href="#">Salir</button>
                        </form>
                    </ul>
                </div>

            </div>
        </nav>
        <div class="m-4"  id="Frame">
            <iframe src="./PaginaPrincipal.jsp" name="myFrame" style=" height: 100%; width: 100%;" id="myFrame"></iframe>
        </div>

        <footer id="Nav2">
            <ul class="nav justify-content-center " style="padding: 6px;" id="contenedor-icon">
                <li class="nav-item" id="icono">
                    <a id="icono1" href="https://www.facebook.com/profile.php?id=100072752202504"><span class="fa fa-facebook-f" style="font-size: 25px; padding-top: 12px;"></span></a>
                </li>
                <li class="nav-item" id="icono">
                    <a id="icono1" href="https://twitter.com/SneakersShoes4"><span class="fa fa-twitter" style="font-size: 25px; padding-top: 12px;"></span></a>
                </li>
                <li class="nav-item" id="icono">
                    <a id="icono1" href="https://www.instagram.com/sneakersshoes_24/"><span class="fa fa-instagram" style="font-size: 25px; padding-top: 12px;"></span></a>
                </li>
            </ul>
        </footer>

        <!-- Icono -->
        <script src="https://kit.fontawesome.com/2c36e9b7b1.js"></script>
        <!-- BootsTrap -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js" integrity="sha384-W8fXfP3gkOKtndU4JGtKDvXbO53Wy8SZCQHczT5FMiiqmQfUpWbYdTil/SxwZgAN" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.min.js" integrity="sha384-skAcpIdS7UcVUC05LJ9Dxay8AXcDYfBJqt1CJ85S/CFujBsIzCIv+l9liuYLaMQ/" crossorigin="anonymous"></script>
    </body>
</html>