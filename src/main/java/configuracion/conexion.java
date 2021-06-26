/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package configuracion;

import java.sql.*;
/**
 *
 * @author Daniel
 */
public class conexion {
    
    public static Connection getConexion(){
        String Url = "jdbc:sqlserver://localhost:1433;"
                    + "database=ProyJava;"
                    + "user=userpc;"
                    + "password=admin;";
        try {
            Connection con = DriverManager.getConnection(Url);
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
