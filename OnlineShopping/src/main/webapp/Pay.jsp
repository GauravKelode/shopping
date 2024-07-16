<%@page import="test.ProductBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Product Details</title>
<style>

    table {
        width: 50%;
        border-collapse: collapse;
        margin: 50px auto;
    }
    th, td {
        border: 1px solid #ddd;
        padding: 8px;
        text-align: left;
    }
    th {
        background-color: #f2f2f2;
    }
    /* Style for the payment button */
    .payment-button {
        display: block;
        margin: 0 auto;
        padding: 10px 20px;
        background-color: #007bff; /* Blue color */
        color: white;
        text-align: center;
        border: none;
        border-radius: 5px;
        cursor: pointer;
    }

    .payment-button:hover {
        background-color: #0056b3; /* Darker blue color on hover */
    }
</style>
</head>
<body>

    <%
    ProductBean pb = (ProductBean) request.getAttribute("pbean");
    String qty = (String) request.getAttribute("int");
    
    double totalPrice = pb.getPrice() * Double.parseDouble(qty);

    %>
    <form action="payment" method="post">
    <table>
        <caption><b>Product Detail</b></caption>
        <tr>
            <th>Attribute</th>
            <th>Value</th>
        </tr>
        <tr>
            <td>Product Code</td>
            <td><%= pb.getCode() %></td>
        </tr>
        <tr>
            <td>Product Name</td>
            <td><%= pb.getName() %></td>
        </tr>
        <tr>
            <td>Product Price</td>
            <td><%= pb.getPrice() %></td>
        </tr>
        <tr>
            <td>Product Quantity</td>
            <td><%= pb.getQty() %></td>
        </tr>
        <tr>
            <td>Required Quantity</td>
            <td><%= qty %></td>
        </tr>
        <tr style="background-color: green;">
            <td>Total Amount</td>
            <td><%= totalPrice %></td>
        </tr>
    </table>

        <input type="hidden" name="pcode" value="<%= pb.getCode() %>">
        <input type="hidden" name="qty" value="<%= qty %>">
        <input class="payment-button" type="submit" value="Payment">
    </form>
</body>
</html>
