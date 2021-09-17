<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registrar Venta</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    </head>
    <body>
        <div class="d-flex">
            <div class="col-sm-4">
                <div class="card">
                    <form action="Controlador?menu=RegistrarVenta" method="POST">
                        <div class="card-body">
                            <!--Formulario de Cliente-->
                            <div class="form-group">
                                <label>Datos del Cliente:</label>
                            </div>
                            <div class="form-group d-flex">
                                <div class="col-sm-6.5 d-flex">
                                    <input type="text" name="txtCodigoCliente" value="${cliente.getDPICliente()}" class="form-control" placeholder="DPI">
                                    <button type="submit" name="accion" value="BuscarCliente" class="btn-outline-info">
                                        <i class="fa fa-search"></i> Buscar</button> 
                                </div>
                                <div class="col-sm-6">
                                    <input type="text" name="txtNombresCliente" value="${cliente.getNombresCliente()}" class="form-control" placeholder="Nombres">
                                </div>
                            </div>
                            <!--Formulario Producto-->
                            <div class="form-group">
                                <label>Datos del Producto:</label>
                            </div>
                            <div class="form-group d-flex">
                                <div class="col-sm-6 d-flex">
                                    <input type="text" name="txtCodigoProducto" value="${producto.getCodigoProducto()}" class="form-control" placeholder="Producto">
                                    <button type="submit" name="accion" value="BuscarProducto" class="btn-outline-info">
                                        <i class="fa fa-search"></i> Buscar</button> 
                                </div>
                                <div class="col-sm-6">
                                    <input type="text" name="txtNombreProducto" value="${producto.getNombreProducto()}" class="form-control" placeholder="Nombre">
                                </div>
                            </div>
                            <div class="form-group d-flex">
                                <div class="col-sm-4 d-flex">
                                    <input type="text" name="txtPrecio" value="${producto.getPrecio()}" class="form-control" placeholder="Precio">
                                </div>
                                <div class="col-sm-4">
                                    <input type="number" name="txtCantidad" value="1" class="form-control" placeholder="Cantidad">
                                </div>
                                <div class="col-sm-3">
                                    <input type="text" name="txtStock" value="${producto.getStock()}" class="form-control" placeholder="Stock">
                                </div>
                            </div>
                            <!--AGREGAR REGISTRO-->
                            <div class="form-group">
                                <div>
                                    <button type="submit" name="accion" value="Agregar" class="btn btn-outline-info"><i class="fa fa-plus-circle"></i> Agregar Producto</button>    
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
            <div class="col-sm-7">
                <div class="card">
                    <div class="card-body">
                        <div class="d-flex col-sm-6 ml-auto">
                            <label>Serie No.</label>
                            <input type="text" name="txtNumSerie" class="form-control"><br>
                        </div>
                        <table class="table table-hover">
                            <thead>
                                <tr>
                                    <th>NUMERO</th>
                                    <th>CODIGO</th>
                                    <th>DESCRIPCION</th>
                                    <th>PRECIO</th>
                                    <th>CANTIDAD</th>
                                    <th>SUB-TOTAL</th>
                                    <th>ACCIONES</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach var="list" items="${lista}">
                                <tr>
                                    <td>${list.getItem()}</td>
                                    <td>${list.getCodigoProducto()}</td>
                                    <td>${list.getDescripcionProd()}</td>
                                    <td>Q. ${list.getPrecio()}</td>
                                    <td>${list.getCantidad()}</td>
                                    <td>Q. ${list.getSubTotal()}</td>
                                    <td class="d-flex">
                                        <a class="btn btn-danger" href="Controlador?menu=RegistrarVenta&accion=Eliminar&NumeroDetalleVenta=${list.getItem()}"style="margin-left: 5px">
                                            <i class="fa fa-trash"></i> Eliminar</a>
                                    </td>
                                </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                    </div>
                    <div class="card-footer d-flex">
                        <div class="col-sm-6">
                            <input type="submit" name="accion" value="Generar Venta" class="btn btn-success"> 
                            <input type="submit" name="accion" value="Cancelar" class="btn btn-danger"> 
                        </div>
                        <div class="col-sm-4" ml-auto>
                            <input type="text" name="txtTotal" value="Q. ${totalPagar}0" class="form-control">
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script>
        
        <!-- Iconos -->
        <script src="https://kit.fontawesome.com/2c36e9b7b1.js"></script>
    </body>
</html>
