/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package payroll.database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import javax.swing.JOptionPane;
/**
 *
 * @author Ryu
 */
public class Koneksi {
    private static Connection mysqlconfig;
    
    public static Connection configDB() throws SQLException {
        try {
            // Pastikan XAMPP (Apache & MySQL) sudah Start
            String url = "jdbc:mysql://localhost:3306/payroll_db"; 
            String user = "root"; 
            String pass = ""; 
            
            // Register Driver
            DriverManager.registerDriver(new com.mysql.cj.jdbc.Driver());
            mysqlconfig = DriverManager.getConnection(url, user, pass);
            
        } catch (Exception e) {
            System.err.println("Koneksi gagal " + e.getMessage()); 
            JOptionPane.showMessageDialog(null, "Gagal Koneksi: " + e.getMessage());
        }
        return mysqlconfig;
    }
}
