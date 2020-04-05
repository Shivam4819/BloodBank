<%@include file="connection.jsp" %>
<%@include file="BloodBankSideNav.jsp" %>
<div class="col-md-8 order-md-1" style="margin-top: 20px;">
           <h1 class="h2" style=" margin-left: 150px;">Blood Group</h1><br>
           <form class="needs-validation" action="BloodBankFormData" method="POST">
            <div class="row">
                
                <div class="col-md-6 mb-3" style=" margin-left: 150px;">
                
                    <h3 style="float: left;">A+</h3>
                    <input type="text" class="form-control" id="lastName" placeholder="enter amount" required  name="A1" 
                                                           style="height: 30px; width: 150px; float: right;border-color: #5a5a5a; border-style: solid" maxlength="2" ><br><br>
                <h3 style="float: left">B+</h3><input type="text" class="form-control" id="lastName" placeholder=""  required name="A2"
                                                   style="height: 30px; width: 150px; float: right;border-color: #5a5a5a; border-style: solid" maxlength="2" ><br><br>
                <h3 style="float: left">AB+</h3><input type="text" class="form-control" id="lastName" placeholder="" value="" required="" name="A3"
                                                   style="height: 30px; width: 150px; float: right;border-color: #5a5a5a; border-style: solid" maxlength="2" ><br><br>
                <h3 style="float: left">O+</h3><input type="text" class="form-control" id="lastName" placeholder="" value="" required="" name="A4"
                                                   style="height: 30px; width: 150px; float: right;border-color: #5a5a5a; border-style: solid" maxlength="2" ><br><br>
                <h3 style="float: left">A-</h3><input type="text" class="form-control" id="lastName" placeholder="" value="" required="" name="A5"
                                                   style="height: 30px; width: 150px; float: right;border-color: #5a5a5a; border-style: solid" maxlength="2" ><br><br>
                <h3 style="float: left">B-</h3><input type="text" class="form-control" id="lastName" placeholder="" value="" required="" name="A6"
                                                   style="height: 30px; width: 150px; float: right;border-color: #5a5a5a; border-style: solid" maxlength="2" ><br><br>
                <h3 style="float: left">AB-</h3><input type="text" class="form-control" id="lastName" placeholder="" value="" required="" name="A7"
                                                   style="height: 30px; width: 150px; float: right;border-color: #5a5a5a; border-style: solid" maxlength="2" ><br><br>
                <h3 style="float: left">O-</h3><input type="text" class="form-control" id="lastName" placeholder="" value="" required="" name="A8"
                                                   style="height: 30px; width: 150px; float: right;border-color: #5a5a5a; border-style: solid" maxlength="2" ><br><br>
               
              </div>
            </div>
            
            <hr class="mb-4">
            <button class="btn btn-primary btn-lg btn-block" type="submit" style="width: auto;margin-left: 150px;">UPDATE</button>
          </form>
        </div>
       </body>
</html>
