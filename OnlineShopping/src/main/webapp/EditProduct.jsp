<%@page import="test.UserBean"%>
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
            background-image: url('https://t4.ftcdn.net/jpg/03/48/89/23/240_F_348892358_naZpXgX0wvlKGalViaqHlj5EpKTkl2eP.jpg');
            background-size: cover;
            background-position: center;
        }
	
        div {
            margin: 8% auto;
            width: 400px;
            height: 300px;
            padding: 18px;
            background-color: rgba(255, 255, 255, 0.2);
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
		UserBean ub = (UserBean)session.getAttribute("ubean");
		out.println("Page Belong to Admin :"+ub.getfName()+"<br>");
		ProductBean pb = (ProductBean)request.getAttribute("pbean");
	%>
	<div>
	<form action="update" method="post">
		<input type="hidden" name="pcode" value=<%=pb.getCode()%>>
		<h2 align="center">Update Product Detail</h2>
		Price <br><input type="text" name="price" value=<%=pb.getPrice()%>><br>
		Quantity<br><input type="text" name="qty" value=<%=pb.getQty()%>><br>
		<input type="submit" value="UpdateProduct">
	</form>
	</div>
</body>
</html>