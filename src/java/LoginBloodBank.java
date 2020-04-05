
import com.mysql.jdbc.ResultSet;
import com.mysql.jdbc.Statement;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.DriverManager;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class LoginBloodBank extends HttpServlet {

    DataBase dataBase = new DataBase();

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
        String firstName = null, lastName = null, option = null;
        if (username != null || password != null) {
            try {
                Class.forName("com.mysql.jdbc.Driver");
                java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://127.0.0.1/BloodBank", "root", "");
                Statement st = (Statement) con.createStatement();

                ResultSet rs = (ResultSet) st.executeQuery("select * from login where email='" + username + "'");
                while (rs.next()) {
                    firstName = rs.getString("email");
                    lastName = rs.getString("password");
                    option = rs.getString("options");
                }
                if (firstName.equals(username) && lastName.equals(password) && option.equals("bloodBank")) {
                    request.getSession().setAttribute("username", firstName);
                    response.sendRedirect("BloodBankForm.jsp");
                } else {
                    out.println("<script type=\"text/javascript\">");
                    out.println("alert('Wrong Credentials...');");
                    out.println("location='loginBloodBank.jsp';");
                    out.println("</script>");

                }
            } catch (IOException | ClassNotFoundException | SQLException e) {
                out.println("<script type=\"text/javascript\">");
                out.println("alert('Check your connection...');");
                out.println("location='loginBloodBank.jsp';");
                out.println("</script>");

            }
        }
    }
}
