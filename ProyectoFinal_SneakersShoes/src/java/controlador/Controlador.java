/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import java.io.IOException;
import java.io.PrintWriter;
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
    
    /*Variable para la función Editar y Eliminar*/
    int codEmpleado;
    int codCliente;
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
                    Cliente e = clienteDAO.listarCodigoCliente(codCliente);
                    request.setAttribute("cliente", e);
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
                    String precio = request.getParameter("txtPrecio");
                    String stock = request.getParameter("txtStock");
                    String est = request.getParameter("txtEstado");
                    producto.setNombreProducto(nombres);
                    producto.setPrecio(Double.parseDouble(precio));
                    producto.setStock(Integer.parseInt(stock));
                    producto.setEstado(est);
                    productoDAO.agregar(producto);
                    request.getRequestDispatcher("Controlador?menu=Producto&accion=Listar").forward(request, response);
                    break;
                    
                case "Editar":
                    
                case "Actualizar":
                    
                case "Eliminar":
                    
            }
            request.getRequestDispatcher("Producto.jsp").forward(request, response);
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
