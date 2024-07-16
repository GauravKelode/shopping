package test;

import java.sql.*;

public class ProductDAO
{
	int k;
	
	public int addProduct(ProductBean pb)
	{
		try
		{
			Connection con = DBConnection.getCon();
					
			PreparedStatement ps = con.prepareStatement("Insert into product11 values(?,?,?,?)");
			
			ps.setString(1, pb.getCode());
			ps.setString(2, pb.getName());
			ps.setFloat(3, pb.getPrice());
			ps.setInt(4, pb.getQty());
			
			k = ps.executeUpdate();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return k;
	}
}
