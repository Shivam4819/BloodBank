/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.ResultSet;
import com.mysql.jdbc.Statement;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.DriverManager;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author shubham
 */
public class SaveHospitalDetails extends HttpServlet {

    Statement st=null;
    ResultSet rs=null; 
    Connection con=null;
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PrintWriter printWriter = response.getWriter();
        HttpSession userSession = request.getSession();
        String hospitalName = request.getParameter("hospitalName");
        String bloodGroup = request.getParameter("bloodGroup");
        String amount = request.getParameter("amount");
        String email = (String)userSession.getAttribute("user");
        System.out.print(hospitalName+" "+bloodGroup+" "+amount+" "+email);
        try{
            Class.forName("com.mysql.jdbc.Driver"); 
            con= (Connection) DriverManager.getConnection("jdbc:mysql://127.0.0.1/BloodBank","root","");
            st= (Statement) con.createStatement(); 
            st.executeUpdate("INSERT INTO HospitalPost(email,hospitalName,bloodGroup,packetAount) "
                    + "VALUES ('"+email+"','"+hospitalName+"','"+bloodGroup+"','"+amount+"')");
            RequestDispatcher view = request.getRequestDispatcher("hospitalPostDisplay.jsp");
            view.forward(request, response);
           }catch(Exception e){
               RequestDispatcher view = request.getRequestDispatcher("hospital.jsp");
               view.forward(request, response);
           }
    }

}
