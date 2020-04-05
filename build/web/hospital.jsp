

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="connection.jsp" %>

<%@include file="HospitalSideNav .jsp" %>
<!DOCTYPE html>
        
        <div class="col-md-8 order-md-1" style="float: left; margin-top: 60px;">
            <form action="SaveHospitalDetails" method="POST">
                
            <div class="form-group">
              <label for="hospitalName">Hospital Name:</label>
              <input type="text" class="form-control" id="hospitalName" 
                     placeholder="Enter hospital name" name="hospitalName" required>
            </div>
            <div class="form-group">
              <label for="bloodGroup">Blood Group:</label>
              <select class="form-control" id="bloodGroup" required name="bloodGroup">
                <option disabled selected hidden>Select blood group</option>
                <option value="A1">A+</option>
                <option value="A2">B+</option>
                <option value="A3">AB+</option>
                <option value="A4">O+</option>
                <option value="A5">A-</option>
                <option value="A6">B-</option>
                <option value="A7">AB-</option>
                <option value="A8">O-</option>
              </select>
            </div>
            <div class="form-group">
              <label for="amount">Amount:</label>
              <input type="text" class="form-control" id="amount" 
                     placeholder="Enter number of packets" name="amount" required maxlength="2">
            </div>
            <button type="submit" class="btn btn-default">Submit</button>
          </form>
        </div>
        <div class="col-md-4" style="width: 100%; height: auto; float: right">
            <img src="one.png" id="img" style="margin-top: 60px;width: 80%;height: 95%;">
        </div>
       </body>
</html>
