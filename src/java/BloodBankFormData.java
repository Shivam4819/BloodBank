
import com.mysql.jdbc.ResultSet;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class BloodBankFormData extends HttpServlet {

    DataBase dataBase = new DataBase();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String A1data=null,A2data=null,A3data=null,A4data=null,A5data=null,
            A6data=null,A7data=null,A8data=null,key=null; 
        int flag=0;
        dataBase.makeConnection();
        String name=null;
        name = request.getSession().getAttribute("username").toString();
        String A1 = request.getParameter("A1");
        String A2 = request.getParameter("A2");
        String A3 = request.getParameter("A3");
        String A4 = request.getParameter("A4");
        String A5 = request.getParameter("A5");
        String A6 = request.getParameter("A6");
        String A7 = request.getParameter("A7");
        String A8 = request.getParameter("A8");
        
        System.out.println("name:-"+name+" "+A1+", "+A2+","+A3+", "+A4+","+A5+", "+A6+","+A7+", "+A8);
        if (A1 != null && A2 != null && A3 != null && A4 != null && A5 != null && A6 != null && A7 != null && A8 != null) {
            try {
                dataBase.rs = (ResultSet) dataBase.st.executeQuery("select * from TotalBloodPackets where email='" + name + "'");

                while (dataBase.rs.next()) {
                    A1data = dataBase.rs.getString("A1");
                    A2data = dataBase.rs.getString("A2");
                    A3data = dataBase.rs.getString("A3");
                    A4data = dataBase.rs.getString("A4");
                    A5data = dataBase.rs.getString("A5");
                    A6data = dataBase.rs.getString("A6");
                    A7data = dataBase.rs.getString("A7");
                    A8data = dataBase.rs.getString("A8");
                    int a1 = Integer.parseInt(A1) + Integer.parseInt(A1data);
                    int a2 = Integer.parseInt(A2) + Integer.parseInt(A2data);
                    int a3 = Integer.parseInt(A3) + Integer.parseInt(A3data);
                    int a4 = Integer.parseInt(A4) + Integer.parseInt(A4data);
                    int a5 = Integer.parseInt(A5) + Integer.parseInt(A5data);
                    int a6 = Integer.parseInt(A6) + Integer.parseInt(A6data);
                    int a7 = Integer.parseInt(A7) + Integer.parseInt(A7data);
                    int a8 = Integer.parseInt(A8) + Integer.parseInt(A8data);
                    A1data = Integer.toString(a1);
                    A2data = Integer.toString(a2);
                    A3data = Integer.toString(a3);
                    A4data = Integer.toString(a4);
                    A5data = Integer.toString(a5);
                    A6data = Integer.toString(a6);
                    A7data = Integer.toString(a7);
                    A8data = Integer.toString(a8);
                    flag = 1;
                }

                dataBase.st.executeUpdate("UPDATE `TotalBloodPackets` SET "
                        + "`A1`=" + A1data + ",`A2`=" + A2data + ",`A3`=" + A3data + ",`A4`=" + A4data + ","
                        + "`A5`=" + A5data + ",`A6`=" + A6data + ",`A7`=" + A7data + ",`A8`=" + A8data + 
                        " WHERE email='" + name + "'");

            } catch (Exception e) {

            }

        }

        if (A1 != null && A2 != null && A3 != null && A4 != null && A5 != null && A6 != null && A7 != null && A8 != null) {
            if (flag == 0) {

                try {
                    try {
                        dataBase.st.executeUpdate("INSERT INTO TotalBloodPackets(email,A1,A2,A3,A4,A5,A6,A7,"
                                + "A8) VALUES('" + name + "','" + A1 + "','" + A2 + "','" + A3 + "','" + A4 + "','" + A5 + "',"
                                + "'" + A6 + "','" + A7 + "','" + A8 + "')");

                    } catch (Exception e) {
                        System.out.print(e);
                    }

                } catch (Exception e) {
                    System.out.print("wrong buddy");
                }
            }
        }
        flag = 0;
        response.sendRedirect("BloodBankDisplay.jsp");
    }
}
