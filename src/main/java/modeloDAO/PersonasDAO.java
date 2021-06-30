/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modeloDAO;

import configuracion.conexion;
import interfaces.CRUD;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import modelo.Personas;

public class PersonasDAO implements CRUD {

    conexion cn = new conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    Personas p = new Personas();
    
    @Override
    public List mostrar() {
        ArrayList<Personas>list = new ArrayList<>();
        String sql = "select * from dbo.Pruebatb1";
        try{
            con = cn.getConexion();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while(rs.next()){
                Personas per = new Personas();
                per.setId(rs.getInt("id"));
                per.setNombre(rs.getString("nombre"));
                per.setEdad(rs.getInt("edad"));
                per.setPais(rs.getString("pais"));
                list.add(per);
            }
        } catch (Exception e){
            System.out.println("No se pudo conectar a la bd");
        }
        return list;
    }
    
    @Override
    public Personas list(int id) {
        String sql = "select * from dbo.Pruebatb1 where id="+id;
        try{
            con = cn.getConexion();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while(rs.next()){
                p.setId(rs.getInt("id"));
                p.setNombre(rs.getString("nombre"));
                p.setEdad(rs.getInt("edad"));
                p.setPais(rs.getString("pais"));
            } 
        } catch (Exception e){
            System.out.println("Error");
        }
        return p;
    }

    @Override
    public boolean agregar(Personas per) {
        String sql = "insert into dbo.Pruebatb1 (nombre, edad, pais)"
                + "values('"+per.getNombre()+"','"+per.getEdad()+"','"+per.getPais()+"')";
        try{
            con = cn.getConexion();
            ps = con.prepareStatement(sql);
            ps.executeUpdate();
        }catch(Exception e){
        
        }
        return false;
    }

    @Override
    public boolean editar(Personas per) {
        String sql = "update dbo.Pruebatb1 set nombre='"+per.getNombre()+"',edad='"+per.getEdad()+"',pais='"+per.getPais()+"'where id="+per.getId();
        try{
            con = cn.getConexion();
            ps = con.prepareStatement(sql);
            ps.executeUpdate();
        }catch(Exception e){
        
        }
        return false;
    }

    @Override
    public boolean eliminar(int id) {
        String sql = "delete from dbo.Pruebatb1 where id="+id;
        try{
            con = cn.getConexion();
            ps = con.prepareStatement(sql);
            ps.executeUpdate();
        }catch(Exception e){
        
        }
        return false;
        
    }
    
}
