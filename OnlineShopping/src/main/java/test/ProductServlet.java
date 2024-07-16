package test;

import java.io.*;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

@SuppressWarnings("serial")
@WebServlet("/add")
public class ProductServlet extends HttpServlet
{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse res)throws ServletException,IOException
	{
		HttpSession hs = req.getSession(false);
		
		if(hs == null)
		{
			req.setAttribute("msg", "Session Expaird...<br>");
			req.getRequestDispatcher("Msg.jsp").forward(req, res);
		}
		else
		{
			ProductBean pb = new ProductBean();
			
			pb.setCode(req.getParameter("code"));
			pb.setName(req.getParameter("name"));
			pb.setPrice(Float.parseFloat(req.getParameter("price")));
			pb.setQty(Integer.parseInt(req.getParameter("qty")));
			
			int k = new ProductDAO().addProduct(pb);
			
			if(k > 0)
			{
				req.setAttribute("msg", "Product Added Successfully...<br>");
				req.getRequestDispatcher("AddProduct.jsp").forward(req, res);
			}
		}
	}
	

}
