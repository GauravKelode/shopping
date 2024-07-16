package test;

import java.io.*;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

@SuppressWarnings("serial")
@WebServlet("/clogout")
public class CustomerLogoutServlet extends HttpServlet
{
	@Override
	protected void doGet(HttpServletRequest req,HttpServletResponse res)throws ServletException,IOException
	{
		HttpSession hs = req.getSession(false);
		
		if(hs == null)
		{
			req.setAttribute("msg", "Session Expaired");
		}
		else
		{
			req.removeAttribute("cbean");
			hs.invalidate();
			
			req.setAttribute("msg", "Customer Logout Successfully...<br>");
		}
		req.getRequestDispatcher("CustomerMsg.jsp").forward(req, res);
	}
}
