package modelo;

import config.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;


public class ProductoDAO 
{
    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    int resp;
	
	public Producto validar(String nombreProducto, String stock)
        {
        
        Producto producto = new Producto();
        
        String sql = "Select * from Producto where nombreProducto = ? and stock = ?";
        try
        {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);   
            ps.setString(1, nombreProducto);
            ps.setString(2, stock);
            rs = ps.executeQuery();
            while (rs.next())
            {
                producto.setCodigoProducto(rs.getInt("codigoProducto"));
                producto.setNombreProducto(rs.getString("nombreProducto"));
                producto.setPrecio(rs.getDouble("precio"));
                producto.setStock(rs.getInt("stock"));
                producto.setEstado(rs.getString("estado"));
            }
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        return producto;
    }
    
    
     public List listar()
     {
        String sql = "Select * from Producto";
        List<Producto> listaProducto = new ArrayList<>();
        try
        {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            
            while(rs.next())
            {
                Producto pr = new Producto();
                pr.setCodigoProducto(rs.getInt(1));
                pr.setNombreProducto(rs.getString(2));
                pr.setPrecio(rs.getDouble(3));
                pr.setStock(rs.getInt(4));
                pr.setEstado(rs.getString(5));
                listaProducto.add(pr);
            }
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        
        return listaProducto;
    }
     
     //Metodo de Agregar.
    public int agregar(Producto pro)
    {
        String sql = "insert into Producto (nombreProducto, precio, stock, estado) values (?,?,?,?);";
        try
        {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.setString(1, pro.getNombreProducto());
            ps.setDouble(2, pro.getPrecio());
            ps.setInt(3, pro.getStock());
            ps.setString(4, pro.getEstado()); 
            ps.executeUpdate();
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
                
        return resp;
    }
    
    public Producto listarCodigoProducto(int id)
    {
        
        Producto pro = new Producto();
        String sql = "Select * from Producto where codigoProducto = " + id;
        try
        {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            
            while(rs.next())
            {
                pro.setCodigoProducto(rs.getInt(1));
                pro.setNombreProducto(rs.getString(2));
                pro.setPrecio(rs.getDouble(3));
                pro.setStock(rs.getInt(4));
                pro.setEstado(rs.getString(5));
                
            }
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        
        return pro;
    }
    
    public int actualizar(Producto pro)
    {
        String sql = "Update Producto set nombreProducto = ?, precio = ?, stock = ?, estado = ? where codigoProducto = ?";
        try
        {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.setString(1, pro.getNombreProducto());
            ps.setDouble(2, pro.getPrecio());
            ps.setInt(3, pro.getStock());
            ps.setString(4, pro.getEstado());
            ps.setInt(5, pro.getCodigoProducto());
            ps.executeUpdate();
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        
        return resp;
    }
    
    public void eliminar(int id)
    {
        String sql = "Delete from Producto where codigoProducto =" + id;
        try
        {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.executeUpdate();
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
    }
}

