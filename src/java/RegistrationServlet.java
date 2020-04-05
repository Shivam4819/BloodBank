
import com.mysql.jdbc.Statement;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.DriverManager;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class RegistrationServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String verifyPassword = request.getParameter("verifyPassword");
        String option = request.getParameter("selectType");
        if (username != null || password != null) {
            if(!password.equals(verifyPassword)){
                out.println("<script type=\"text/javascript\">");
                out.println("alert('Password not verified');");
                out.println("location='registration.jsp';");
                out.println("</script>");
            }
            else{
                try {
                    Class.forName("com.mysql.jdbc.Driver");
                    java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://127.0.0.1/BloodBank", "root", "");
                    Statement st = (Statement) con.createStatement();
                    try{
                        st.executeUpdate("insert into login(email,password,options) values('" + username + "','" + password + "','" + option + "')");
                        response.sendRedirect("registration.jsp");
                    }catch(SQLException sq){
                        out.println("<script type=\"text/javascript\">");
                        out.println("alert('Username already exists');");
                        out.println("location='registration.jsp';");
                        out.println("</script>");
                    }
                } catch (ClassNotFoundException | SQLException e) {
                    out.println("<script type=\"text/javascript\">");
                    out.println("alert('Check your connection...');");
                    out.println("location='registration.jsp';");
                    out.println("</script>");
                }
            }
        }
    }
}
