package test;

import java.sql.*;

public class DeleteProductDAO 
{
	public int k = 0;
	
	public int delete(ProductBean pb)
	{
		try 
		{
			Connection con = DBConnection.getCon();
			
			PreparedStatement ps = con.prepareStatement("Delete From product11 where pcode=?");
			
			ps.setString(1, pb.getCode());
			
			k = ps.executeUpdate();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return k;
	}
}
