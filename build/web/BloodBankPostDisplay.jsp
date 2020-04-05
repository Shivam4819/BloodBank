<%-- 
    Document   : BloodBankPostDisplay
    Created on : 16 Sep, 2018, 9:07:02 PM
    Author     : shubham
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="BloodBankSideNav.jsp" %>
<%@include file="connection.jsp" %>
<style>
    /* Remove the navbar's default margin-bottom and rounded borders */ 
    .navbar {
        margin-bottom: 0;
        border-radius: 0;
    }

    /* Set height of the grid so .sidenav can be 100% (adjust as needed) */
    .row.content {height: 540px}

    /* Set gray background color and 100% height */
    .sidenav {
        padding-top: 20px;
        height: 100%;
    }
    #img{
        margin-top: 50px;
        width: 80%;
        height: 95%;
    }
    /* Set black background color, white text and some padding */
    footer {
        background-color: #555;
        color: white;
        padding: 15px;
    }

    /* On small screens, set height to 'auto' for sidenav and grid */
    @media screen and (max-width: 767px) {
        .sidenav {
            height: auto;
            padding: 15px;
        }
        .row.content {height:auto;} 
    }
    .col-sm-10{
        height: 600px;
    }
    .card {
        margin-top: 10px;
        box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
        transition: 0.1s;
        width: 30%;
        float: left;
        margin-left: 30px;
        margin-bottom: 10px;
    }

    .card:hover {
        box-shadow: 0 10px 16px 0 rgba(0,0,0,0.2);
    }
    .containt {
        padding: 2px 16px;
    }
    .button {
        background-color: #4CAF50; /* Green */
        border-radius: 5px;
        color: white;
        padding: 5px 15px;
        text-align: center;
        text-decoration: none;
        display: inline-block;
        font-size: 20px;
        margin: 4px 2px;
        -webkit-transition-duration: 0.4s; /* Safari */
        transition-duration: 0.4s;
        cursor: pointer;
        margin-right: 330px;
        
    }

    .button1 {
        background-color: white; 
        color: black; 
        border: 2px solid #4CAF50;
        
    }

    .button1:hover {
        background-color: #4CAF50;
        color: white;
    }
</style>

<%!int flag=0; %>
<% //flag = (Integer)request.getAttribute("flag"); 
   if(flag == 1){
       System.out.println("hiiiii");%>
   <script>
       window.alert("Can not update..");
   </script>
<%  }
    %>
<%! String bloodGroup,amount,hospitalname,bloodGroup2;
    int id; %>
    <div class="container-fluid text-center">    
        <div class="row content" style="height: inherit">
            <div class="col-sm-12 text-left"> 
            <% rs = st.executeQuery("SELECT * FROM HospitalPost where flag=1"); %>
            <% while(rs.next()){ 
                id = rs.getInt("id");
                bloodGroup = rs.getString("bloodGroup");
                amount = rs.getString("packetAount");
                hospitalname=rs.getString("hospitalName");
                if(bloodGroup.equals("A1")){
                    bloodGroup="A+";
                }
                else if(bloodGroup.equals("A2")){
                    bloodGroup="B+";
                }
                else if(bloodGroup.equals("A3")){
                    bloodGroup="AB+";
                }
                else if(bloodGroup.equals("A4")){
                    bloodGroup="O+";
                }
                else if(bloodGroup.equals("A5")){
                    bloodGroup="A-";
                }
                else if(bloodGroup.equals("A6")){
                    bloodGroup="B-";
                }
                else if(bloodGroup.equals("A7")){
                    bloodGroup="AB-";
                }
                else if(bloodGroup.equals("A8")){
                    bloodGroup="O-";
                }
            %>
                
            <div class="card">
                <img src="img_avatar.png" alt="Avatar" style="width:100%;">
                <div class="containt">
                    <h4><b>POST ID:-  <%=id%></b></h4> 
                    <p>HOSPITAL NAME:- <%=hospitalname  %></p> 
                    <p>BLOOD GROUP:-  <%=bloodGroup  %></p> 
                    <p>AMOUNT:-  <%=amount  %></p> 
                    <a href="img_avatar.png"></a>
                </div>
            </div>
            <% } %>
            
            </div>
        </div>  
            <div style="height: 80px;width: inherit">
            <form action="BloodBankPostDisplayData" method="POST">
                <input class="w3-input w3-border w3-round-large" type="text" required name="accept"
                       style="margin-left: 200px;"placeholder="Enter id">
                <button class="button button1" type="submit" >ACCEPT</button>
            </form>
            </div>    
    </div>
</body>
</html>
