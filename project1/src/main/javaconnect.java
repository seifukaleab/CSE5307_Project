/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package main;

/**
 *
 * @author Seifu_Kaleab
 */
import java.sql.*;
import javax.swing.JOptionPane;

public class javaconnect {
static final String Jdbcdriver="com.mysql.cj.jdbc.Driver";
static final String Db_url="jdbc:mysql://localhost:3306/lottery";
static final String username="root";
static final String password="";
Connection con; 
        
public static Connection ConnectorDB(){
 try{
     Class.forName(Jdbcdriver);
     Connection con=DriverManager.getConnection(Db_url,username,password);
     return con;
 }catch(Exception e){
     JOptionPane.showMessageDialog(null,e);
 }
       return null;
}
}   
