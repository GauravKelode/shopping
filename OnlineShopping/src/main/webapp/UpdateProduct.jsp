<%@page import="test.UserBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Dashboard</title>
<style>
body {
    font-family: Arial, sans-serif;
    background-color: aliceblue;
    background-image: url('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTWLE_zMLJLqBoI8wtvjOP6TxG9adG33s08fA&s');
    background-size: cover;
    background-position: center;
}

div {
    margin: 8% auto;
    width: 500px;
    height: 200px;
    padding: 18px;
    background-color: rgba(255, 255, 255, 0.2);
    border-radius: 10px;
    line-height: 2.1pc;
    box-shadow: 0 4px 8px black;
}

a {
    display: inline-block;
    margin: 25px;
    padding: 8px 15px;
    background-color: #007bff;
    color: white;
    text-decoration: none;
    border-radius: 5px;
    text-align: center;
    transition: background-color 0.3s;
}

a:hover {
    background-color: #0056b3;
}
</style>
</head>
<body>
<%
    UserBean ub = (UserBean)session.getAttribute("ubean");
    String msg = (String)request.getAttribute("msg");
%>
<div>
    <h2 align="center">Page Belong To Admin: <%=ub.getfName() %></h2>
    <h2 align="center"><%=msg%></h2>
    <a href=addproduct.html>Add Product</a>
    <a href="view">View Product</a>
    <a href="logout">Logout</a>
</div>
</body>
</html>
