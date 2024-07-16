package test;

import java.io.*;
import java.util.*;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

@SuppressWarnings("serial")
@WebServlet("/cview")
public class CustomerViewProductServlet extends HttpServlet
{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse res)throws ServletException,IOException
	{
		HttpSession hp = req.getSession(false);
		
		if(hp == null)
		{
			req.setAttribute("msg", "Session Expaired...<br>");
			req.getRequestDispatcher("CustomerMsg.jsp").forward(req, res);
		}
		else
		{
			ArrayList<ProductBean> al = new ViewProductDAO().retrive();
			
			hp.setAttribute("alist", al);
			
			req.getRequestDispatcher("CustomerViewProduct.jsp").forward(req, res);
		}
	}
}
