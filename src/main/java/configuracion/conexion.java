/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package configuracion;

import com.microsoft.sqlserver.jdbc.SQLServerDataSource;
import java.sql.*;
import java.sql.DriverManager;
/**
 *
 * @author Daniel
 */
public class conexion {
    
    public static Connection getConexion(){
        SQLServerDataSource ds = new SQLServerDataSource(); 
        ds.setUser("userpc"); 
        ds.setPassword("admin"); 
        ds.setServerName("localhost"); 
        ds.setPortNumber(1433); 
        ds.setDatabaseName("ProyJava"); 
        try {
            Connection con = ds.getConnection();
            System.out.println("Conectado.");
            return con;
        } 
        catch (SQLException ex) 
        {
            System.out.println("Error.");
            return null;
        }
    }
    
   
}
