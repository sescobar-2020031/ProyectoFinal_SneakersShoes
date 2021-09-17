/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.Cliente;
import modelo.ClienteDAO;
import modelo.Empleado;
import modelo.EmpleadoDAO;
import modelo.Producto;
import modelo.ProductoDAO;
import modelo.Venta;


public class Controlador extends HttpServlet 
{
    /*Referencia a las clases modelo*/
    
    /*Modelo de Empleado*/
    Empleado empleado = new Empleado();
    EmpleadoDAO empleadoDAO = new EmpleadoDAO();
    /*Modelo de Clientes*/
    Cliente cliente = new Cliente();
    ClienteDAO clienteDAO = new ClienteDAO();
    /*Modelo de Productos*/
    Producto producto = new Producto();
    ProductoDAO productoDAO = new ProductoDAO();
    /* Lista Venta*/
    Venta venta = new Venta();
    List<Venta> lista = new ArrayList<>();
    /*Variables para la función Editar y Eliminar*/
    
    int codEmpleado;
    int codCliente;
    int codProducto;
    int item = 0;
    int codPro, canti;
    String descripcion;
    Double precio, subTotal;
    Double totalPagar;
    int numeroDetalleVenta;
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {
        
        String menu = request.getParameter("menu");
        String accion = request.getParameter("accion");
        
        if(menu.equals("Principal"))
        {
            request.getRequestDispatcher("Principal.jsp").forward(request, response);
        }
        else if(menu.equals("PaginaPrincipal"))
        {
            request.getRequestDispatcher("PaginaPrincipal.jsp").forward(request, response);
        }
        
        else if(menu.equals("Empleado"))
        {
            switch(accion)
            {
                case "Listar":
                    List listaEmpleados =empleadoDAO.listar();
                    request.setAttribute("empleados", listaEmpleados);
                    break;
                
                case "Agregar":
                    String DPI = request.getParameter("txtDPIEmpleado");
                    String nombres = request.getParameter("txtNombresEmpleado");
                    String telefono = request.getParameter("txtTelefonoEmpleado");
                    String est = request.getParameter("txtEstado");
                    String user = request.getParameter("txtUsuario");
                    
                    empleado.setDPIEmpleado(DPI);
                    empleado.setNombresEmpleado(nombres);
                    empleado.setTelefonoEmpleado(telefono);
                    empleado.setEstado(est);
                    empleado.setUsuario(user);
                    
                    empleadoDAO.agregar(empleado);
                    request.getRequestDispatcher("Controlador?menu=Empleado&accion=Listar").forward(request, response);
                    break;
                    
                case "Editar":
                    codEmpleado = Integer.parseInt(request.getParameter("codigoEmpleado"));
                    Empleado e = empleadoDAO.listarCodigoEmpleado(codEmpleado);
                    request.setAttribute("empleado", e);
                    request.getRequestDispatcher("Controlador?menu=Empleado&accion=Listar").forward(request, response);
                    break;
                    
                case "Actualizar":
                    String DPIEmp = request.getParameter("txtDPIEmpleado");
                    String nombresEmp = request.getParameter("txtNombresEmpleado");
                    String telefonoEmp = request.getParameter("txtTelefonoEmpleado");
                    String estEmp = request.getParameter("txtEstado");
                    String userEmp = request.getParameter("txtUsuario");
                    empleado.setDPIEmpleado(DPIEmp);
                    empleado.setNombresEmpleado(nombresEmp);
                    empleado.setTelefonoEmpleado(telefonoEmp);
                    empleado.setEstado(estEmp);
                    empleado.setUsuario(userEmp);
                    empleado.setCodigoEmpleado(codEmpleado);
                    empleadoDAO.actualizar(empleado);
                    request.getRequestDispatcher("Controlador?menu=Empleado&accion=Listar").forward(request, response);
                    break;
                    
                case "Eliminar":
                    codEmpleado = Integer.parseInt(request.getParameter("codigoEmpleado"));
                    empleadoDAO.eliminar(codEmpleado);
                    request.getRequestDispatcher("Controlador?menu=Empleado&accion=Listar").forward(request, response);
                    break;
            }
            
            request.getRequestDispatcher("Empleado.jsp").forward(request, response);
       
        }
        else if (menu.equals("Cliente"))
        {
            switch (accion) 
            {
                case "Listar":
                    List listaClientes = clienteDAO.listar();
                    request.setAttribute("clientes", listaClientes);
                    break;
                    
                case "Agregar":
                    String DPI = request.getParameter("txtDPICliente");
                    String nombres = request.getParameter("txtNombresCliente");
                    String direccion = request.getParameter("txtDireccionCliente");
                    String est = request.getParameter("txtEstado");
                    cliente.setDPICliente(DPI);
                    cliente.setNombresCliente(nombres);
                    cliente.setDireccionCliente(direccion);
                    cliente.setEstado(est);
                    clienteDAO.agregar(cliente);
                    request.getRequestDispatcher("Controlador?menu=Cliente&accion=Listar").forward(request, response);
                    break;
                    
                case "Editar":
                    codCliente = Integer.parseInt(request.getParameter("codigoCliente"));
                    Cliente c = clienteDAO.listarCodigoCliente(codCliente);
                    request.setAttribute("cliente", c);
                    request.getRequestDispatcher("Controlador?menu=Cliente&accion=Listar").forward(request, response);
                    break;
                    
                case "Actualizar":
                    String DPICli = request.getParameter("txtDPICliente");
                    String nombresCli = request.getParameter("txtNombresCliente");
                    String direccionCli = request.getParameter("txtDireccionCliente");
                    String estCli = request.getParameter("txtEstado");
                    cliente.setDPICliente(DPICli);
                    cliente.setNombresCliente(nombresCli);
                    cliente.setDireccionCliente(direccionCli);
                    cliente.setEstado(estCli);
                    cliente.setCodigoCliente(codCliente);
                    clienteDAO.actualizar(cliente);
                    request.getRequestDispatcher("Controlador?menu=Cliente&accion=Listar").forward(request, response);
                    break;
                    
                case "Eliminar":
                    codCliente = Integer.parseInt(request.getParameter("codigoCliente"));
                    clienteDAO.eliminar(codCliente);
                    request.getRequestDispatcher("Controlador?menu=Cliente&accion=Listar").forward(request, response);
                    break;
            }
            request.getRequestDispatcher("Cliente.jsp").forward(request, response);
        }
        else if (menu.equals("Producto"))
        {
            switch (accion) 
            {
                case "Listar":
                    List listaProductos = productoDAO.listar();
                    request.setAttribute("productos", listaProductos);
                    break;
                    
                case "Agregar":
                    String nombres = request.getParameter("txtNombreProducto");
                    String precios = request.getParameter("txtPrecio");
                    String stock = request.getParameter("txtStock");
                    String est = request.getParameter("txtEstado");
                    producto.setNombreProducto(nombres);
                    producto.setPrecio(Double.parseDouble(precios));
                    producto.setStock(Integer.parseInt(stock));
                    producto.setEstado(est);
                    productoDAO.agregar(producto);
                    request.getRequestDispatcher("Controlador?menu=Producto&accion=Listar").forward(request, response);
                    break;
                    
                case "Editar":
                    codProducto = Integer.parseInt(request.getParameter("codigoProducto"));
                    Producto p = productoDAO.listarCodigoProducto(codProducto);
                    request.setAttribute("producto", p);
                    request.getRequestDispatcher("Controlador?menu=Producto&accion=Listar").forward(request, response);
                    break;
                    
                case "Actualizar":
                    String nombresPro = request.getParameter("txtNombreProducto");
                    String precioPro = request.getParameter("txtPrecio");
                    String stockPro = request.getParameter("txtStock");
                    String estPro = request.getParameter("txtEstado");
                    producto.setNombreProducto(nombresPro);
                    producto.setPrecio(Double.parseDouble(precioPro));
                    producto.setStock(Integer.parseInt(stockPro));
                    producto.setEstado(estPro);
                    producto.setCodigoProducto(codProducto);
                    productoDAO.actualizar(producto);
                    request.getRequestDispatcher("Controlador?menu=Producto&accion=Listar").forward(request, response);
                    break;
                    
                case "Eliminar":
                    codProducto = Integer.parseInt(request.getParameter("codigoProducto"));
                    productoDAO.eliminar(codProducto);
                    request.getRequestDispatcher("Controlador?menu=Producto&accion=Listar").forward(request, response);
                    break;        
            }
            request.getRequestDispatcher("Producto.jsp").forward(request, response);
        }else if (menu.equals("RegistrarVenta")) {
            switch (accion) {
                case "BuscarCliente":
                    String dpi = request.getParameter("txtCodigoCliente");
                    cliente.setDPICliente(dpi);
                    cliente = clienteDAO.buscar(dpi);
                    request.setAttribute("cliente", cliente);
                    lista.clear();
                    totalPagar = 0.0;
                    item = 0;
                    break;
                case "BuscarProducto":
                    codProducto = Integer.parseInt(request.getParameter("txtCodigoProducto"));
                    producto = productoDAO.listarCodigoProducto(codProducto);
                    System.out.println(codProducto);
                    request.setAttribute("producto", producto);
                    request.setAttribute("lista", lista);
                    request.setAttribute("totalPagar", totalPagar);
                    request.setAttribute("cliente", cliente);
                    request.setAttribute("lista", lista);
                    break;
                case "Agregar":
                    request.setAttribute("cliente", cliente);
                    totalPagar = 0.0;
                    item = item + 1;
                    codPro = producto.getCodigoProducto();
                    descripcion = request.getParameter("txtNombreProducto");
                    precio = Double.parseDouble(request.getParameter("txtPrecio"));
                    canti = Integer.parseInt(request.getParameter("txtCantidad"));
                    subTotal = precio * canti;
                    venta = new Venta();
                    venta.setItem(item);
                    venta.setCodigoProducto(codPro);
                    venta.setDescripcionProd(descripcion);
                    venta.setPrecio(precio);
                    venta.setCantidad(canti);
                    venta.setSubTotal(subTotal);
                    lista.add(venta);
                    for (int i = 0; i < lista.size(); i++) {
                        totalPagar = totalPagar + lista.get(i).getSubTotal();
                    }
                    request.setAttribute("totalPagar", totalPagar);
                    request.setAttribute("lista", lista);
                    break;
                case "Eliminar":
                    int codigo = Integer.parseInt(request.getParameter("NumeroDetalleVenta"));
                    for (int i = 0; i < lista.size(); i++) {
                        if (codigo == lista.get(i).getItem()) {
                            lista.remove(i);
                            request.setAttribute("lista", lista);
                        }
                    }
                    break;
            }
            request.getRequestDispatcher("RegistrarVenta.jsp").forward(request, response);
        }

    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
