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
</head>
<body>


<form action="postjob"method="post"style="text-align: center;color: white;background-color: #4f1a15" >




    Title <input type="text"style="margin-left: 40px;margin-top: 10px" name="title"/><br>

    description <input type="text"style="margin-left: 40px;margin-top: 10px" name="description"/><br>
    <div>
        <label>Gender</label>

        <input type="radio" name="gender" value="male"> Full Time<br>
        <input type="radio" name="gender" value="female">part Time <br>
    </div>



    <label> City</label>
    <select name="Qualification">
        <option value="misb">Islamabad</option>
        <option value="kar">Karachi</option>
        <option value="lah">Lahore</option>

    </select>







    <br>
    <div>
        <button type="submit"  style="background-color:black;margin-left: 29px;color: antiquewhite;">Post Job </button>
    </div>
    <hr style="background-color: black;">
</form >

</body>
</html>
