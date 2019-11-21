<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 11/21/2019
  Time: 2:57 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
    <link href="bootstrap.css" rel="stylesheet" type="text/css">
</head>
<body background="background.jpg">
<marquee style="color:white" bgcolor=black direction=right behavior=alternate scrollamount=7><h2><b><i>I    CAN    is    100 ..  <span style="color:red">  times    more    important    than    IQ</span></i></b></h2></marquee></center>

<h1 style="color: fuchsia;text-align: center"><b> Login</b></h1>
<hr style="background-color: white">
<div class="row">
    <div class="col-lg-3"></div>
    <div class="col-lg-5">
        <form action="login"method="post"style="text-align:center;color: white;background-color: #4f1a15" >


            Email <input type="text" style="margin-left: 71px;margin-top: 10px" name="email"/><br>
            Password <input type="password" style="margin-left: 44px;margin-top: 10px" name="password"/><br>

            <br>
            <div>
                <button type="submit"  style="background-color:black;margin-left: 29px;color: antiquewhite;">Login</button>

            </div>
            <a href="register.jsp">New User? register here</a>
            <hr style="background-color: black;">
        </form >

    </div>
    <div class="col-lg-4"></div>
</div>
</body>
</html>
