package test;

import java.io.IOException;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

@SuppressWarnings("serial")
@WebServlet("/reg")
public class CustomerRegServlet extends HttpServlet 
{
	@Override
	protected void doPost(HttpServletRequest req,HttpServletResponse res)throws ServletException,IOException
	{
		CustomerBean cs = new CustomerBean();
		
		cs.setuName(req.getParameter("uname"));
		cs.setpWord(req.getParameter("pword"));
		cs.setfName(req.getParameter("fname"));
		cs.setlName(req.getParameter("lname"));
		cs.setAddrs(req.getParameter("adds"));
		cs.setMid(req.getParameter("mid"));
		cs.setPhno(Long.parseLong(req.getParameter("phno")));
		
		int k = new CustomerRegDAO().register(cs);
		
		if(k>0)
		{
			req.setAttribute("msg", "Customer Added Successfully...<br>");
			req.getRequestDispatcher("CustomerMsg.jsp").forward(req, res);
		}
		else
		{
			req.setAttribute("msg", "Customer Not Added Successfully...<br>");
			req.getRequestDispatcher("CustomerMsg.jsp").forward(req, res);
		}
	}
}
