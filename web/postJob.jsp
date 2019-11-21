<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 11/21/2019
  Time: 3:13 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>post Job</title>
    <meta charset="utf-8">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css" integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js" integrity="sha384-alpBpkh1PFOepccYVYDB4do5UnbKysX5WZXm3XxPqe5iKTfUKjNkCk9SaVuEZflJ" crossorigin="anonymous"></script>
    <link href="bootstrap.css" rel="stylesheet">
</head>
<body>
<body background="background.jpg">

<%
    int userId = 0;
    HttpSession session1 = request.getSession(false);
    if (session1!=null){
        if(session1.getAttribute("userId")!=null){
            userId = (int)session1.getAttribute("userId");
        }else
            response.sendRedirect("login.jsp");
    }

%>


<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <a class="navbar-brand" href="#"></a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button><a class="navbar-brand" href="#"></a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button><a class="navbar-brand" href="#"></a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button><a class="navbar-brand" href="#"></a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNavDropdown">
        <ul class="navbar-nav">
            <li class="nav-item active"style="margin-left: 20px; ">
                BSE 163056
            </li>
            <li class="nav-item"style="margin-left: 40px; ">
                M Mubasher
            </li>

            <li class="nav-item"style="margin-left: 40px; ">
                Home
            </li>
            <li class="nav-item" style="margin-left: 40px; ">
                About
            </li>
            <li class="nav-item" style="margin-left: 40px; ">
                Services
            </li>

            <li class="nav-item">
                <a class="btn btn-success"class="nav-link" href="postJob.jsp"style="margin-left: 50px; ">Post Job</a>
            </li>

            <li class="nav-item">
                <form action="logout" method="post">
                    <button type="submit"class="btn btn-danger"style="margin-left: 70px; ">logout</button>
                </form>
            </li>


        </ul>
    </div>
</nav>

<div class="row">
<div class="col-lg-3"></div>
<div class="col-lg-6">

    <form action="postjob"method="post"style="text-align:center;color: white;background-color: #4f1a15;margin-top: 50px" >




        Title <input type="text"style="margin-left: 70px;margin-top: 10px" name="title"/><br>

        description <input type="text"style="margin-left: 30px;margin-top: 10px" name="description"/><br>

        <div style="margin-top: 15px;">

            <label> Job Type</label>
            <input type="radio" name="jobtype" value="Full Time" > Full Time
            <input type="radio" name="jobtype" value="Part Time" checked>part Time
        </div>


<div style="margin-top: 15px;">
        <label> Job City</label>
        <select name="jobcity">
            <option value="Islamabad"selected>Islamabad</option>
            <option value="karachi">Karachi</option>
            <option value="Lahore">Lahore</option>

        </select>

</div>





        <br>
        <div>
            <button type="submit"  style="background-color:black;margin-left: 29px;color: antiquewhite;">Post Job </button>
        </div>
        <hr style="background-color: black;">
    </form >

</div>
<div class="col-lg-3"></div>

</div>


</html>
