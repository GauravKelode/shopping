package test;

import java.io.*;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

@SuppressWarnings("serial")
@WebServlet("/customer")
public class CustomerLoginServlet extends HttpServlet
{
	@Override
	protected void doPost(HttpServletRequest req,HttpServletResponse res)throws ServletException ,IOException
	{
		String uName = req.getParameter("uname");
		String pWord = req.getParameter("pword");
		
		CustomerBean cb = new CustomerLoginDAO().login(uName, pWord);
		
		if(cb == null)
		{
			req.setAttribute("msg", "Invalid UserName and Password..<br>");
			req.getRequestDispatcher("CustomerMsg.jsp").forward(req, res);
		}
		else
		{
			HttpSession hs = req.getSession();
			
			hs.setAttribute("cbean", cb);
			
			req.getRequestDispatcher("Customer.jsp").forward(req, res);
		}
	}
}
