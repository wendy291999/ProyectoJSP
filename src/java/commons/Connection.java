/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package commons;

import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author wenkary
 */
public class Connection {
      
    private java.sql.Connection con = null;
    private static Connection conn;
    
    private Connection() {
    
        try {
            String url = "jdbc:mysql://localhost:3306/wendydb?useSSL=false&useLegacyDatetimeCode=false&serverTimezone=UTC";
            Class.forName("com.mysql.jdbc.Driver");
            con = (java.sql.Connection) DriverManager.getConnection(url, "root", "wendys123");
            System.out.println("Se conecto");
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(java.sql.Connection.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
     

    public boolean execute(String sql) {
        boolean res = false;

        try {
            Statement st = con.createStatement();
            st.execute(sql);
        } catch (SQLException ex) {
            Logger.getLogger(Connection.class.getName()).log(Level.SEVERE, null, ex);
        }

        return res;
    }
    
    
     public ResultSet executeQuery(String sql){
        ResultSet res=null;
        
        try {    
            System.out.println("&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&");
            System.out.println(con);
            Statement st = con.createStatement();
            res=st.executeQuery(sql);
        } catch (SQLException ex) {
            Logger.getLogger(Connection .class.getName()).log(Level.SEVERE, null, ex);
        }
        return res;
    }
            
    public static Connection getInstance (){
        if(conn == null) {  
            conn = new Connection();
        }
        
        return conn;
            
    }
}
