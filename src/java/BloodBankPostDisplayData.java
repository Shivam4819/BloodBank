
import com.mysql.jdbc.ResultSet;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class BloodBankPostDisplayData extends HttpServlet {

    DataBase dataBase = new DataBase();
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        dataBase.makeConnection();
        String userName;
        userName = (String) request.getSession().getAttribute("username");
        String postId, bloodGroupType=null, bloodAmount=null;
        int idno, totalPacket=0, result;
        
        postId = request.getParameter("accept");
        System.out.println("postid:-"+postId);
        idno = Integer.parseInt(postId);

        if (postId != null) {
            try {
                dataBase.rs = (ResultSet) dataBase.st.executeQuery("SELECT * FROM HospitalPost where id=" + idno);
                while (dataBase.rs.next()) {
                    bloodGroupType = dataBase.rs.getString("bloodGroup");
                    bloodAmount = dataBase.rs.getString("packetAount");
                }
                dataBase.rs = (ResultSet) dataBase.st.executeQuery("SELECT * FROM TotalBloodPackets where email='" + userName + "'");
                while (dataBase.rs.next()) {
                    totalPacket = dataBase.rs.getInt(bloodGroupType);
                }
                int packetNumber = Integer.parseInt(bloodAmount);
                if (totalPacket >= packetNumber) {
                    dataBase.st.executeUpdate("UPDATE HospitalPost SET flag=0 where id=" + idno);
                    result = totalPacket - packetNumber;
                    if (result >= 0) {
                        dataBase.st.executeUpdate("UPDATE TotalBloodPackets SET " + bloodGroupType + "=" + result + " where email='" + userName + "'");
                    }
                    response.sendRedirect("BloodBankPostDisplay.jsp");
                }
                else
                {
                    out.println("<script type=\"text/javascript\">");
                    out.println("alert('User or password incorrect');");
                    out.println("location='BloodBankPostDisplay.jsp';");
                    out.println("</script>");
                }
                
                //st.executeUpdate("UPDATE HospitalPost SET flag=0 where id="+idno);
            } catch (NumberFormatException | SQLException e) {
                System.out.print(e);
            }
        }

    }
}
