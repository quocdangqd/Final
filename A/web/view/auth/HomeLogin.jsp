<%-- 
    Document   : home
    Created on : Oct 27, 2022, 3:11:31 PM
    Author     : HAI DANG
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
        
            Hello ${sessionScope.account.displayname}, click 
            <a href="http://localhost:9999/AssignmentFinal/login">here</a> to logout.
            <br/>

            <c:if test="${sessionScope.account.is_Student}">
                <a href="student/timetable?stdid=${sessionScope.account.stdid}"><h1>Time Table</h1></a> <br/>
            </c:if>

            <c:if test="${!sessionScope.account.is_Student}">
                <a href="lecture/timetable?lid=${sessionScope.account.lid}"><h1>Time Table</h1></a> <br/><br
            </c:if>
       

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
        
    </style>

</html>
