<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Empleados</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    </head>
    <body>
        <div class="d-flex">
            <div class="card col-sm-4">
                <div class="card-body">
                    <h4><center>Empleado</center></h4>
                    <form action="Controlador?menu=Empleado" method="POST">
                        <div class="form-group">                            
                            <label>DPI:</label>
                            <input type="text" value = "${empleado.getDPIEmpleado()}" name="txtDPIEmpleado" class="form-control">
                        </div>
                        <div class="form-group">                            
                            <label>Nombres:</label>
                            <input type="text" value = "${empleado.getNombresEmpleado()}" name="txtNombresEmpleado" class="form-control">
                        </div>
                        <div class="form-group">                            
                            <label>Teléfono:</label>
                            <input type="text" value = "${empleado.getTelefonoEmpleado()}" name="txtTelefonoEmpleado" class="form-control">
                        </div>
                        <div class="form-group">                            
                            <label>Estado:</label>
                            <input type="text" value="${empleado.getEstado()}" name="txtEstado" name="txtEstadoEmpleado" class="form-control">
                        </div>
                        <div class="form-group">                            
                            <label>Usuario:</label>
                            <input type="text" value="${empleado.getUsuario()}" name="txtUsuario" class="form-control">
                        </div>
                        <button type="submit" name="accion" value="Agregar" class="btn btn-info">
                            <i class="fa fa-plus-circle"></i> Agregar</button>
                        <button type="submit" name="accion" value="Actualizar" class="btn btn-success">
                            <i class="fa fa-refresh"></i> Actualizar</button>
                    </form>
                </div>
            </div>
            <div class="col-sm-8">
                <table class="table table-hover">
                    <thead>
                        <tr>
                            <th>CODIGO</th>
                            <th>DPI</th>
                            <th>NOMBRES</th>
                            <th>TELEFONO</th>
                            <th>ESTADO</th>
                            <th>USUARIO</th>
                            <th>ACCIONES</th>
                        </tr>
                    </thead>
                    <tbody>
                    <c:forEach var="empleado" items="${empleados}">
                        <tr>
                            <td>${empleado.getCodigoEmpleado()}</td>
                            <td>${empleado.getDPIEmpleado()}</td>
                            <td>${empleado.getNombresEmpleado()}</td>
                            <td>${empleado.getTelefonoEmpleado()}</td>
                            <td>${empleado.getEstado()}</td>
                            <td>${empleado.getUsuario()}</td>
                            <td>
                                <a class="btn btn-warning" href="Controlador?menu=Empleado&accion=Editar&codigoEmpleado=${empleado.getCodigoEmpleado()}">
                                    <i class="fa fa-pencil-square-o"></i> Editar</a>
                                <a class="btn btn-danger" href="Controlador?menu=Empleado&accion=Eliminar&codigoEmpleado=${empleado.getCodigoEmpleado()}">
                                    <i class="fa fa-trash"></i> Eliminar</a>
                            </td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
                        
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script>
    
        <!-- Iconos -->
        <script src="https://kit.fontawesome.com/2c36e9b7b1.js"></script>
    </body>
</html>
