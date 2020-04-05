<%-- 
    Document   : Display
    Created on : Sep 10, 2018, 9:42:50 PM
    Author     : shivam
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="BloodBankSideNav.jsp" %>
<%@include file="connection.jsp" %>
<!DOCTYPE html>
<%!String name; %>
<% name = (String)session.getAttribute("username");%>
<head>
<style>
table, th, td {
    border: 1px solid black;
    border-collapse: collapse;
}
</style>
</head>
<body>



<%!int A1,A2,A3,A4,A5,A6,A7,A8; %>
    <%
        
        try {
            rs=st.executeQuery("select * from TotalBloodPackets where email='"+name+"'");
            while (rs.next()) {
                
                A1=rs.getInt("A1");
                A2=rs.getInt("A2");
                A3=rs.getInt("A3");
                A4=rs.getInt("A4");
                A5=rs.getInt("A5");
                A6=rs.getInt("A6");
                A7=rs.getInt("A7");
                A8=rs.getInt("A8");
                
               }
        } 
        catch (Exception e) {
        }
    %>
    <style>
        .column {
            float: left;
            width: 120px;
            padding: 5px;
            margin-top: 40px;
            height: 300px;
            margin-left: 5px;
        }
        .row::after {
            content: "";
            clear: both;
            display: table;
        }
        #img{
            height: 300px;
            margin-left: 20px;
        }
        #caption{
            margin-left: 40px;
        }
        h5{
            margin-left: 35px; 
        }
    </style>
    <div class="row">
        <div class="column">
            <label id="caption"><h2>A+</h2></label><br><br>
            <% if(A1!=0){ %>
                <img src="Image_1019.jpg" alt="Snow" id="img"><br><br>
                <h5>Amount:-</h5>
                <h5><%=A1 %></h5>
                
            <% }
            else{ %>
                <img src="Image_4015.jpg" alt="Snow" id="img">
                <br><br>
                <h5>Amount:-</h5>
                <h5><%=A1 %></h5>
            <% } %>
        </div>
        
        <div class="column">
            <label id="caption"><h2>B+</h2></label><br><br>
            <% if(A2!=0){ %>
                <img src="Image_1027.jpg" id="img"><br><br>
                <h5>Amount:-</h5>
                <h5><%=A2 %></h5>
            <% }
            else{ %>
                <img src="Image_4015.jpg" alt="Snow" id="img"><br><br>
                <h5>Amount:-</h5>
                <h5><%=A2 %></h5>
            <% } %>
        </div>
        
        <div class="column">
            <label id="caption"><h2>AB+</h2></label><br><br>
            <% if(A3!=0){ %>
                <img src="Image_1034.jpg" id="img"><br><br>
                <h5>Amount:-</h5>
                <h5><%=A3 %></h5>
            <% }
            else{ %>
                <img src="Image_4015.jpg" alt="Snow" id="img"><br><br>
                <h5>Amount:-</h5><br>
                <h5><%=A3 %></h5>
            <% } %>
        </div>
        
        <div class="column">
            <label id="caption"><h2>O+</h2></label><br><br>
            <% if(A4!=0){ %>
                <img src="Image_1040.jpg" id="img"><br><br>
                <h5>Amount:-</h5>
                <h5><%=A4 %></h5>
            <% }
            else{ %>
                <img src="Image_4015.jpg" alt="Snow" id="img"><br><br>
                <h5>Amount:-</h5>
                <h5><%=A4 %></h5>
            <% } %>
        </div>
        
        <div class="column">
            <label id="caption"><h2>A-</h2></label><br><br>
            <% if(A5!=0){ %>
                <img src="Image_1019.jpg" id="img"><br><br>
                <h5>Amount:-</h5>
                <h5><%=A5 %></h5>
            <% }
            else{ %>
                <img src="Image_4015.jpg" alt="Snow" id="img"><br><br>
                <h5>Amount:-</h5>
                <h5><%=A5 %></h5>
            <% } %>
        </div>
        
        <div class="column">
            <label id="caption"><h2>B-</h2></label><br><br>
            <% if(A6!=0){ %>
                <img src="Image_1027.jpg" id="img"><br><br>
                <h5>Amount:-</h5>
                <h5><%=A6 %></h5>
            <% }
            else{ %>
                <img src="Image_4015.jpg" alt="Snow" id="img"><br><br>
                <h5>Amount:-</h5>
                <h5><%=A6 %></h5>
            <% } %>
        </div>
        
        <div class="column">
            <label id="caption"><h2>AB-</h2></label><br><br>
            <% if(A7!=0){ %>
                <img src="Image_1040.jpg" id="img"><br><br>
                <h5>Amount:-</h5>
                <h5><%=A7 %></h5>
            <% }
            else{ %>
                <img src="Image_4015.jpg" alt="Snow" id="img">
                <br><br>
                <h5>Amount:-</h5>
                <h5><%=A7 %></h5>
            <% } %>
        </div>
        
        <div class="column">
            <label id="caption"><h2>O-</h2></label><br><br>
            <% if(A8!=0){ %>
                <img src="Image_1019.jpg" id="img"><br><br>
                <h5>Amount:-</h5>
                <h5><%=A8 %></h5>
            <% }
            else{ %>
                <img src="Image_4015.jpg" alt="Snow" id="img"><br><br>
                <h5>Amount:-</h5>
                <h5><%=A8 %></h5>
            <% } %>
        </div>
        
    </div>
</body>
</html>