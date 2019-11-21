<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 11/21/2019
  Time: 2:31 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link href="bootstrap.css" rel="stylesheet" type="text/css">
    <title>Title</title>
</head>
<body >
<marquee style="color:white" bgcolor=green direction=right behavior=alternate scrollamount=7><h2><b><i>I CAN is 100 <span style="color:red">times more important than  IQ</span></i></b></h2></marquee></center>


<script>

function ClearData(){

alert("in clear");

document.getElementById("name").value="";
document.getElementById("email").value="";

document.getElementById("password").value="";


}
</script>


<h1 style="color: fuchsia;text-align: center"><b> Register</b></h1>
<hr style="background-color: white">
<div class="row">
    <div class="col-lg-4"></div>
    <div class="col-lg-4">
        <form action="signup"method="post"style="text-align: center;color: white;background-color: #4f1a15" >
            Name <input type="text"style="margin-left: 40px;margin-top: 10px" name="name" id="name"/><br>

            Email <input type="text" style="margin-left: 71px;margin-top: 10px" name="email" id="email"/><br>
            Password <input type="password" style="margin-left: 14px;margin-top: 10px" name="password" id="password"/><br>

            <br>
            <div>

                <input type="checkbox" name="term" value="abc"> I ACCEPT term and agreement

            </div>
            <div>
                <button type="submit"  style="background-color:black;margin-left: 29px;color: antiquewhite;">Submit</button>

            </div>
            <a href="login.jsp">already have an accout? Login</a>
            <hr style="background-color: black;">
        </form >
        <button type="button" ONCLICK="ClearData()"style="color:orange" >Reset </button>
    </div>
    <div class="col-lg-4"></div>
    </div>

</body>
</html>
