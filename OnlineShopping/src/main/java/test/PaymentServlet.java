package test;

import java.io.*;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

@SuppressWarnings("serial")
@WebServlet("/payment")
public class PaymentServlet extends HttpServlet
{
	@Override
	protected void doPost(HttpServletRequest req,HttpServletResponse res)throws ServletException,IOException
	{
		
		HttpSession hs = req.getSession(false);
		
		if(hs == null)
		{
			req.setAttribute("msg", "Session Expaired..<br>");
			req.getRequestDispatcher("CustomerMsg.jsp").forward(req, res);
		}
		else
		{
			String pCode = req.getParameter("pcode");
			int qty = Integer.parseInt(req.getParameter("qty"));
			
			
			int k = new PaymentDAO().payment(pCode, qty);
			
			if(k>0)
			{
				req.setAttribute("msg", "Payment Successfully<br>");
				req.getRequestDispatcher("Payment.jsp").forward(req, res);
			}
			else
			{
				req.setAttribute("msg", "Payment Not Successfully<br>");
				req.getRequestDispatcher("Payment.jsp").forward(req, res);
			}
		}
		
		
	}
}
