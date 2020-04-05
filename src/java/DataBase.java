
import com.mysql.jdbc.Connection;
import com.mysql.jdbc.ResultSet;
import com.mysql.jdbc.Statement;
import java.sql.DriverManager;

public class DataBase {
    public Statement st=null;
    public ResultSet rs=null; 
    public Connection con=null; 
    void makeConnection(){
        
        try{
            Class.forName("com.mysql.jdbc.Driver"); 
            con = (Connection) DriverManager.getConnection("jdbc:mysql://127.0.0.1/BloodBank","root","");
            st= (Statement) con.createStatement(); 
        }catch(Exception e){
           System.out.print(e);
       }
    }
}
