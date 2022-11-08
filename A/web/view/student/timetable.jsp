<%-- 
    Document   : timetable
    Created on : Oct 15, 2022, 9:30:31 AM
    Author     : Ngo Tung Son
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:useBean id="helper" class="util.DateTimeHelper"/>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href=”../css/style.css” rel=”stylesheet” type=”text/css” />
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <input style='color: black; font-weight: bold;background-color: orange;font-size: xx-large' type = "text" readonly="readonly" value="TIME TABLE" size="10"/>
        <br/>
        <br/>
        <input style='color: black;font-size:large'type="text" readonly="readonly" value="${requestScope.student.name}" size="23"/>
        <br/>
        <br/>

        <form action="timetable" method="GET">
            <input type="hidden" name="stdid" value="${param.stdid}"/>
            From: <input type="date" name="from" value="${requestScope.from}"/>
            To: <input type="date" name="to" value="${requestScope.to}"/>
            <input type="submit" value="View"/> 
            <br/>
            <br/>


        </form>
        <table border="1px">
            <tr style='color: black; background-color: darkgray;'>
                <td style= 'font-size:large; color: black; text-align: center;'>Time</td>
                <c:forEach items="${requestScope.dates}" var="d">
                    <td>${d}<br/>${helper.getDayNameofWeek(d)}</td>
                    </c:forEach>
            </tr>
            <c:forEach items="${requestScope.slots}" var="slot">
                <tr>
                    <td style='color: black; background-color: darkgray;font-size: x-large'>${slot.description}</td>
                    <c:forEach items="${requestScope.dates}" var="d">
                        <td>
                            <c:forEach items="${requestScope.attandances}" var="att">
                                <c:if test="${helper.compare(att.session.date,d) eq 0 and (att.session.timeslot.id eq slot.id)}">
                                    <a href="att?id=${att.session.id}">${att.session.group.name}-${att.session.lecturer.name}</a>
                                    <br/>
                                    ${att.session.room.name}
                                    <br/>

                                    <c:if test="${att.session.attandated}">
                                        <c:if test = "${att.present}"><a>attended</a></c:if>
                                        <c:if test = "${!att.present}"><a>absented</a></c:if>

                                    </c:if>
                                    <c:if test="${!att.session.attandated}">
                                        <a>not yet</a>
                                    </c:if>
                                </c:if>

                            </c:forEach>
                        </td>
                    </c:forEach>
                </tr>
            </c:forEach>
        </table>
    </body>
</html>
