<%-- 
    Document   : login
    Created on : Oct 17, 2022, 3:08:08 PM
    Author     : sonnt
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1 style="text-align: center; color: black; font-size: xx-large">FPT UNIVERSITY</h1>
    <center>
        <form action="login" method="POST">
            
            <table border="1px" style="background-color:#535241">
                <tr>
                    <td>Username:</td>
                    <td><input type="text" name="username" /></td> 
                </tr>
                <tr>
                    <td>Password:</td>
                    <td><input type="password" name="password" /></td>
                </tr>
                <td> 
                    <input style="width:100%" type="submit" value="Login"></td> 

                <a style="color:red; font-size: large;">${requestScope.ms}</a>
                <br/>
            </table>
        </form>

    </center> 
          
</body>
      <style type="text/css">
        body{
            position:relative;
            height:650px;
            width:1325px;
            margin:auto;
            background-image: url(img/1a.jpg);
            background-size: cover;
            background-repeat: no-repeat; 
        }
        form{
            position:absolute;
            top:45%;
            height:50px;
            margin-top:-25px;
            padding:0 500px;
            width: 0;
            
        }
    </style>

</html>


