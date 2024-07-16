package test;

import java.io.*;
import java.util.ArrayList;
import java.util.Iterator;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

@SuppressWarnings("serial")
@WebServlet("/buy")
public class BuyProduct extends HttpServlet 
{
	@SuppressWarnings("unchecked")
	protected void doGet(HttpServletRequest req,HttpServletResponse res)throws ServletException,IOException
	{
		HttpSession hs = req.getSession(false);
		
		if(hs == null)
		{
			req.setAttribute("msg", "Session Expaired...<br>");
			req.getRequestDispatcher("CustomerMsg.jsp").forward(req, res);
		}
		else
		{
			String pCode = req.getParameter("pcode");
			
			
			ArrayList<ProductBean> al = (ArrayList<ProductBean>)hs.getAttribute("alist");
			
			Iterator<ProductBean> it = al.iterator();
			
			while(it.hasNext())
			{
				ProductBean pb = (ProductBean)it.next();
				
				if(pCode.equals(pb.getCode()))
				{
					req.setAttribute("pbean", pb);
					
					req.getRequestDispatcher("BuyProduct.jsp").forward(req, res);
					
					break;
				}
			}
		}
	}
}
