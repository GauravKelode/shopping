<%@page import="test.UserBean"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="test.ProductBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Product List</title>
<style>
body
{
 background-image: url('https://t3.ftcdn.net/jpg/02/41/43/18/240_F_241431868_8DFQpCcmpEPVG0UvopdztOAd4a6Rqsoo.jpg');
    background-size: cover;
    padding: 20px;
}
    table {
        
    border-collapse: collapse;
    width: 1000px;
    margin: 10% auto;
    background-color: rgba(255, 255, 255,0.8);;
    padding: 20px;
    border-radius: 5px;
    box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
    }
    th, td {
        border: 1px solid #ddd;
        padding: 8px;
        text-align: left;
    }
    th {
        background-color: #f2f2f2;
    }
      .centered-anchor {
        display: inline-block;
    }
    a {
    display: inline-block;
    padding: 8px;
    margin-right: 5px;
    background-color: #007bff;
    color: #fff;
    text-decoration: none;
    border-radius: 5px;
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
    ArrayList<ProductBean> al = (ArrayList<ProductBean>)session.getAttribute("alist");
    
  //  out.println("<h3 align='center'>Page belongs to Admin: " + ub.getfName() + "</h3>");

    if (al.size() == 0) {
        out.println("<p>Not Products available...</p>");
    } else {
%>
    <table>
    <caption>Page belongs to Admin: <%=ub.getfName() %></caption>
        <tr>
            <th>Code</th>
            <th>Name</th>
            <th>Price</th>
            <th>Quantity</th>
            <th>Action</th>
        </tr>
<%
        Iterator<ProductBean> it = al.iterator();

        while (it.hasNext()) {
            ProductBean pb = (ProductBean)it.next();
%>
        <tr>
            <td><%= pb.getCode() %></td>
            <td><%= pb.getName() %></td>
            <td><%= pb.getPrice() %></td>
            <td><%= pb.getQty() %></td>
            <td>
                <a href='edit?pcode=<%= pb.getCode() %>'>Edit</a> |
                <a href='delete?pcode=<%= pb.getCode() %>'>Delete</a>
            </td>
        </tr>
<%
        }
    }
%>
    </table>
    <a href="logout">Logout</a>
    <a href="Admin.jsp">Back</a>
</body>
</html>