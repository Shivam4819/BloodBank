<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="BLOODBANK INTERACTION SYSTEM">
    <meta name="author" content="VIVEK">

    <title>REGISTRATION</title>

    <link rel="stylesheet" href="front.css"/>
    <link rel="stylesheet" href="login.css"/>

</head>
<body class="text-center centered1">
    
    <form class="form-signin" action="RegistrationServlet" method="POST" name="registerForm">
        
      <img class="mb-2" src="bloodsymbol.jpg" alt="SIGN UP" width="249" height="180">
      <h1 class="h2 mb-3 font-weight-bold">WE NEED YOU</h1>
      
      <label for="inputEmail" class="sr-only">Email address</label>
      <input type="email" id="inputEmail" class="form-control" placeholder="Email address" name="username" 
             required="" autofocus="">
      
      <label for="inputPassword" class="sr-only">Password</label>
      <input type="password" id="inputPassword" class="form-control" placeholder="Password" name="password"
             required="">
      
      <label for="inputPassword" class="sr-only">Verify Password</label>
      <input type="password" id="verifyPassword" class="form-control" placeholder="Verify Password" name="verifyPassword"
             required="">
      
      <label class="sr-only">Type</label>
      <select id="selectType" class="form-control" placeholder="Select type" name="selectType" required="">
        <option value="hospital">Hospital</option>
        <option value="bloodBank">Blood Bank</option>
      </select>
        <br/>
      <button class="btn btn-lg btn-primary btn-block" type="submit">Sign up</button><br/>   
      <input type="button" class="btn btn-sm btn-outline-secondary btn-outline-light font-weight-bold" value="Login as Blood Bank" onclick="location.href='loginBloodBank.jsp'">
    <input type="button" class="btn btn-sm btn-outline-secondary btn-outline-light font-weight-bold btn-light" value="Login as Hospital" onclick="location.href='loginHospital.jsp'">
    
    </form>
</body>
</html>

