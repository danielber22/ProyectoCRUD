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
    public Personas list() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
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
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean eliminar(int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
}
