<%@ page import="Db.DbConnection" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.io.PrintWriter" %><%--
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
</head>
<body>
<nav class="navbar navbar-default">
    <div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-brand" href="#">WebSiteName</a>
        </div>
        <ul class="nav navbar-nav">
            <li class="active"><a href="#">Bse163056</a></li>
            <li><a href="#">Page 1</a></li>
            <li><a href="#">Page 2</a></li>
            <li><a href="#">Logout</a></li>
        </ul>
    </div>
</nav>
<div>
    <a href="postJob.jsp">Post Job</a>


</div>


<table>
    <tr>


        <td>Job Id</td>
        <td>Title</td>
        <td>Description</td>
        <td>Job Type</td>
        <d>Job City</d>
        <td>PostType</td>
        <td>Postedby</td>


    </tr>


</table>


</body>
</html>
