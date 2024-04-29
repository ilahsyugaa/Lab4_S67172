<%-- 
    Document   : processInsuranceQuo
    Created on : Apr 29, 2024, 4:24:37 PM
    Author     : Fad Rahmat
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
    String icNo = request.getParameter("icno");
    String customerName = request.getParameter("name");
    double marketPrice = Double.parseDouble(request.getParameter("price"));
    String coverageType = request.getParameter("cover");
    int ncd = Integer.parseInt(request.getParameter("disc"));
    
    double discount = 0.0;
    switch (ncd) {
        case 1:
            discount = 0.1;
            break;
        case 2:
            discount = 0.25;
            break;
        case 3:
            discount = 0.35;
            break;
        case 4:
            discount = 0.55;
            break;
    }
    
    double totalAmount = marketPrice * (1 - discount);
    double gst = totalAmount * 0.06;
    double finalAmount = totalAmount + gst;
%>
<html>
<body>
    <h1>Insurance Quotation Result</h1>
    <p>IC No: <%= icNo %></p>
    <p>Customer Name: <%= customerName %></p>
    <p>Market Price: <%= marketPrice %></p>
    <p>Coverage Type: <%= (coverageType.equals("1")) ? "Comprehensive" : "Third-party" %></p>
    <p>No Claim Discount (NCD): <%= (discount * 100) %>%</p>
    <p>Insurance Amount: <%= totalAmount %></p>
    <p>6% GST: <%= gst %></p>
    <p><strong>Final Amount (with 6% GST): <%= finalAmount %></strong></p>
</body>
</html>