<%-- 
    Document   : index
    Created on : 12/09/2021, 02:06:40 AM
    Author     : ProyectoFinal_SneakersShoes
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        
         <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
        
        <title>Login | Sneakers Shoes</title>
    </head>
    <body>
        
        <section class="login">
            <div class="container py-5 text-center">
                <div class="row no-gutters">
                    <div class="col-lg-4 mx-auto">
                        <div id="carouselExampleCaptions" class="carousel slide" data-ride="carousel">
                            <ol class="carousel-indicators texto-slider">
                                <li data-target="#carouselExampleCaptions" data-slide-to="0" class="active"></li>
                                <li data-target="#carouselExampleCaptions" data-slide-to="1"></li>
                                <li data-target="#carouselExampleCaptions" data-slide-to="2"></li>
                            </ol>
                            <div class="carousel-inner">
                                <div class="carousel-item active">
                                    <img src="img/nike-whaterspoon.png" class="d-block w-100">
                                    <div class="carousel-caption d-none d-md-block texto-slider">
                                        <h5 style="background-color: transparent;">Sneakers Shoes</h5>
                                        <p style="background-color: transparent;">Los Mejores Productos.</p>
                                    </div>
                                </div>
                                <div class="carousel-item">
                                    <img src="img/nike-dunk.png" class="d-block w-100" alt="...">
                                    <div class="carousel-caption d-none d-md-block texto-slider">
                                        <h5 style="background-color: transparent;">Sneakers Shoes</h5>
                                        <p style="background-color: transparent;">Las Mejores Marcas.</p>
                                    </div>
                                </div>
                                <div class="carousel-item">
                                    <img src="img/yeezy.jfif" class="d-block w-100" alt="...">
                                    <div class="carousel-caption d-none d-md-block texto-slider">
                                        <h5 style="background-color: transparent;">Sneakers Shoes</h5>
                                        <p style="background-color: transparent;">Los Mejores Precios.</p>
                                    </div>
                                </div>
                            </div>
                            <a class="carousel-control-prev" href="#carouselExampleCaptions" role="button" data-slide="prev">
                                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                <span class="sr-only">Previous</span>
                            </a>
                            <a class="carousel-control-next" href="#carouselExampleCaptions" role="button" data-slide="next">
                                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                <span class="sr-only">Next</span>
                            </a>
                        </div>
                    </div>
                    <div class="col-lg-8 py-5 log">
                        <div class="row mx-auto">
                            <div class="col-lg-7 mx-auto text-white">
                                <h1><span>Sneakers Shoes</span> LOGIN</h1>
                                <p>Ventas | Sneakers Shoes</p>
                                <form class ="pt-4" class="form-sign" action="Validar" method="POST">
                                    <div class="form-row py-2">
                                        <div class="col-lg-12">
                                            <input type="text" name="txtUser" class="form-control" placeholder="Usuario">
                                        </div>
                                    </div>
                                    <div class="form-row pt-4">
                                        <div class="col-lg-12">
                                            <input type="password" name="txtPass" class="form-control" placeholder="Contraseña">
                                        </div>
                                    </div>
                                    <br>
                                    <button type="submit" name="accion" value="Ingresar" class="ov-btn-slide-close">LOGIN</button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
        
    </body>
</html>
