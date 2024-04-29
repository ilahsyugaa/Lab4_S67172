<%-- 
    Document   : forward
    Created on : Apr 29, 2024, 3:19:36 PM
    Author     : Fad Rahmat
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Using JSP Standard Action (forward)</title>
    </head>
    <body>
        <h2>Using jsp:forward to display user info.</h2>
        <jsp:forward page="forwardInfo.jsp">
            <jsp:param name= "U_Name" value="ilahsyugaa"/>
            <jsp:param name= "Email" value="ilahsyugaa@gmail.com"/>
            <jsp:param name= "Nationality" value="Malaysia"/>
            <jsp:param name= "Background" value="Developer"/>
        </jsp:forward>
    </body>
</html>
