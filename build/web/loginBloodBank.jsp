<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="BLOODBANK INTERACTION SYSTEM">
    

    <title>LOGIN HOSPITAL</title>

    <link rel="stylesheet" href="login.css"/>
    <link rel="stylesheet" href="front.css"/>
</head>

<body class="text-center centered2">
    
    <form id="fm2" class="form-signin" method="POST" action="LoginBloodBank" >
      <img class="mb-4" src="./Signin Template for Bootstrap_files/bootstrap-solid.svg" 
           alt="" width="72" height="72">
      <h1 class="h3 mb-3 font-weight-bold text-white">BLOOD BANK LOGIN</h1>
      
      <label for="inputEmail" class="sr-only">Email address</label>
      <input type="email" id="inputEmail" class="form-control" placeholder="Email address" name="username" 
             required="" autofocus="">
      
      <label for="inputPassword" class="sr-only">Password</label>
      <input type="password" id="inputPassword" class="form-control" placeholder="Password" name="password"
             required="">
               <br/>
      <button class="btn btn-lg btn-primary btn-block" type="submit">SIGN IN</button>
    </form>
</body>
</html>
