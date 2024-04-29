<%-- 
    Document   : processCurrency
    Created on : Apr 29, 2024, 12:45:33 AM
    Author     : Fad Rahmat
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%!
            //Define constants...
            final double USD = 3.92;
            final double STG = 5.96;
            final double EURO = 4.47;
            
            //Define method to perform currency exchange...
            private double calculateRate(String currency, int amount) {
                double currencyChange = 0.00;
                
                if (currency.equals("1"))
                    currencyChange = amount * USD;
                else if (currency.equals("2"))
                    currencyChange = amount * STG;
                else if (currency.equals("3"))
                    currencyChange = amount * EURO;
                
                return currencyChange;
            }
        %>
        
        <%-- Retrieve the value for Amount and Convert to --%>
        <% 
            int amount = Integer.parseInt(request.getParameter("amount"));
            String convertTo = request.getParameter("convert");
            
            // Call the calculateRate method to perform currency conversion
            double result = calculateRate(convertTo, amount);
        %>
        
        <h1>Currency Conversion Result</h1>
        <p>Amount in Ringgit Malaysia: RM<%= amount %></p>
        <p>Amount in Euro: <%= result %></p>
    </body>
</html>
