<%@ page import="Db.DbConnection" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="java.sql.SQLException" %><%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 11/21/2019
  Time: 3:05 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>jobs</title>

    <meta charset="utf-8">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css" integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js" integrity="sha384-alpBpkh1PFOepccYVYDB4do5UnbKysX5WZXm3XxPqe5iKTfUKjNkCk9SaVuEZflJ" crossorigin="anonymous"></script>
    <link href="bootstrap.css" rel="stylesheet">
</head>
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
            <h2 style="color:green;text-align:center;">Player List</h2>
            <table ng-controller="ListController" class="table table-hover" style="color:white">
                <thead>
                <tr>
                    <th scope="col" style="color:blue;">Job Id</th>
                    <th scope="col"style="color:red">Title</th>
                    <th scope="col"style="color:yellow">Description</th>
                    <th scope="col" style="color:blue;">Job type</th>
                    <th scope="col"style="color:red">Job City</th>
                    <th scope="col"style="color:blue">Post Type</th>
                    <th scope="col"style="color:yellow">Posted By</th>
                </thead>
                <tbody>

<%

                    DbConnection obj = new DbConnection();
                    ResultSet result = obj.displayJobRecords();


                    try {
                        while (result.next()){
                            %>
                            <tr>
                  <td><%=result.getInt("jobid") %></td>
                <td><%=result.getString("title") %></td>
                <td><%=result.getString("description") %></td>
                                <td><%=result.getInt("jobtype") %></td>
                                <td><%=result.getString("jobcity") %></td>
                                <td><%=result.getString("posttype") %></td>
                                <td><%=result.getString("postedby") %></td>
                </tr>


<%
                        }
                    } catch (SQLException e) {
                        e.printStackTrace();
                    }


                %>



                </tbody>
            </table>

    </div>
    <div class="col-lg-3"></div>
</div>








</body>
</html>
