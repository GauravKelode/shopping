package test;

import java.io.*;
import java.util.*;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

@SuppressWarnings("serial")
@WebServlet("/delete")
public class DeleteProductServlet extends HttpServlet
{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse res)throws ServletException,IOException
	{
		HttpSession hs = req.getSession(false);
		
		if(hs == null)
		{
			req.setAttribute("msg", "Session Expaired...<br>");
			req.getRequestDispatcher("Msg.jsp").forward(req, res);
		}
		else
		{
			@SuppressWarnings("unchecked")
			ArrayList<ProductBean> al = (ArrayList<ProductBean>)hs.getAttribute("alist");
			
			String pCode = req.getParameter("pcode");
			
			Iterator<ProductBean> it = al.iterator();
			
			while(it.hasNext())
			{
				ProductBean pb = (ProductBean) it.next();
				
				if(pCode.equals(pb.getCode()))
				{
					int k = new DeleteProductDAO().delete(pb);
					
					if(k>0)
					{
						req.setAttribute("msg", "Product Delete Successfully...<br>");
						req.getRequestDispatcher("UpdateProduct.jsp").forward(req, res);
					}
					break;
				}
			}
		}
	}
}
