package test;

import java.sql.*;

public class PaymentDAO 
{
	public int k = 0;
	
	public int payment(String pCode,int qty)
	{
		try
		{
			Connection con = DBConnection.getCon();
			
			PreparedStatement ps = con.prepareStatement("update product11 set pqty=pqty-? where pcode=?");
			
			ps.setInt(1, qty);
			ps.setString(2, pCode);
			
			k = ps.executeUpdate();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return k;
	}
}
