package resort.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import resort.dbconnection.DBConnect;
import resort.model.Expense;

public class ExpenseDAO {
	
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;		
	private static boolean success = false;
	
	
	
	public static List<Expense> display(){
		
		ArrayList<Expense> exp = new ArrayList<>();
		
		try {
			con = DBConnect.getConection();
			stmt = con.createStatement();
			String sql = "select * from expenses";
			rs = stmt.executeQuery(sql);
			
			while (rs.next()) {
				
				int id = rs.getInt(1);
				String date = rs.getString(2);
				String division = rs.getString(3);
				String type = rs.getString(4);
				int quantity = rs.getInt(5);
				float total = rs.getFloat(6);
				
				Expense e = new Expense(id, date, division, type, quantity, total);
				
				exp.add(e);
			}
			
			
		}catch (Exception e)
		{
			e.printStackTrace();
		}
			
		return exp;
}
	
	
	
public static List<Expense> displaySelected(String div, String sDate, String eDate){
		
		ArrayList<Expense> exp = new ArrayList<>();
		
		try {
			con = DBConnect.getConection();
			stmt = con.createStatement();
			String sql = "select * from expenses WHERE division = '"+div+"' AND date between '"+sDate+"' and '"+eDate+"'";
			rs = stmt.executeQuery(sql);
			
			while (rs.next()) {
				
				int id = rs.getInt(1);
				String date = rs.getString(2);
				String division = rs.getString(3);
				String type = rs.getString(4);
				int quantity = rs.getInt(5);
				float total = rs.getFloat(6);
				
				Expense e = new Expense(id, date, division, type, quantity, total);
				
				exp.add(e);
			}
			
			
		}catch (Exception e)
		{
			e.printStackTrace();
		}
			
		return exp;
}

	public static boolean insertExpense(String date, String division, String type, int quantity, float total) {
		
		
		try {
			con = DBConnect.getConection();
			stmt = con.createStatement();
			
			String sql = "insert into expenses values (0, '"+date+"', '"+division+"', '"+type+"', '"+quantity+"', '"+total+"')";
			
			int rs = stmt.executeUpdate(sql);
			
			if (rs > 0) {
				success = true;
			} else {
				success = false;
			}
			
		}catch (Exception e)
		{
			e.printStackTrace();
		}
			
		return success;
	}
	
     public static boolean updateExpense(int id, String date, String division, String type, int quantity, float total) {
		
		try {
			con = DBConnect.getConection();
			stmt = con.createStatement();
			
			String sql = "update expenses set date='"+date+"', division='"+division+"', type = '"+type+"', quentity = '"+quantity+"', total = '"+total+"' where id = '"+id+"'";
			
			int rs = stmt.executeUpdate(sql);
			
			if (rs > 0) {
				success = true;
			} else {
				success = false;
			}
			
		}catch (Exception e)
		{
			e.printStackTrace();
		}
		
		return success;
	}
	
	
	public static boolean deleteExpense(int id) {
		
		try {
			con = DBConnect.getConection();
			stmt = con.createStatement();
			
			String sql = "delete from expenses where id = '"+id+"' ";
			
			int rs = stmt.executeUpdate(sql);
			
			if (rs > 0) {
				success = true;
			} else {
				success = false;
			}
			
		}catch (Exception e)
		{
			e.printStackTrace();
		}
		
		return success;
	}
	
	
	
}
