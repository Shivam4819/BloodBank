<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%!Statement st=null;
   ResultSet rs=null; 
   Connection con=null; %>
<% try{
    Class.forName("com.mysql.jdbc.Driver"); 
    con= DriverManager.getConnection("jdbc:mysql://127.0.0.1/BloodBank","root","");
    st= con.createStatement(); 
   }catch(Exception e){
       out.print(e);
   }
    %>

