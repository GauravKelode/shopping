<%@page import="test.CustomerBean"%>
<%@page import="test.ProductBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
body {
            font-family: Arial, sans-serif;
            background-color: aliceblue;
            background-image: url('https://static.vecteezy.com/system/resources/previews/002/185/957/non_2x/order-now-neon-signs-style-text-free-vector.jpg');
            background-size: cover;
            background-position: center;
        }
	
        div {
            margin: 8% auto;
            width: 400px;
            height: 300px;
            padding: 18px;
            background-color: rgba(255, 255, 255, 0.7);
            border-radius: 10px;
            line-height: 2.1pc;
            box-shadow: 0 4px 8px black;
        }

        input[type="text"],input[type="password"]
    {
    width: 50%;
    padding: 7px;
    margin-bottom: 10px;
    border: 1px solid #ccc;
    border-radius: 4px;
    
    }

        input[type="submit"] {
            width: auto;
            background-color: #007bff;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        input[type="submit"]:hover {
            background-color: #0056b3;
        }
</style>
</head>
<body>
	<%
		CustomerBean cb = (CustomerBean)session.getAttribute("cbean");
		out.println("Page Belong To :"+cb.getfName()+"<br>");
		ProductBean pb = (ProductBean)request.getAttribute("pbean");
	%>
	<div>
		<form action="pay">
		<p>Product Code:<%=pb.getCode() %></p>
		<p>Product Name:<%=pb.getName() %></p>
		<p>Product Price:<%=pb.getPrice() %></p>
		<p>Product Quantity:<%=pb.getQty() %></p>
		<label>Required Quantity</label>
		<input type="number" name="qty">
		<input type="hidden" name="pcode" value="<%= pb.getCode() %>"><br>
		<input type="submit" value="Buy Product">
		</form>
	</div>
</body>
</html>