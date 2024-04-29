<%-- 
    Document   : bmiCalculator
    Created on : Apr 29, 2024, 4:28:39 PM
    Author     : Fad Rahmat
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>BMI Calculator</title>
    </head>
    <body>
    <h1>BMI Calculator</h1>
    <form method="post" action="calculateBMI.jsp">
        Enter your weight in kilograms: <input type="text" name="weight"><br>
        Enter your height in meters: <input type="text" name="height"><br>
        <input type="submit" value="Calculate BMI">
    </form>
</body>
</html>
