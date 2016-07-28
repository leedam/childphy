package REGISTER;

import java.sql.*;
import java.util.*;

import REGISTER.member;

public class insert {
	Connection conn;
	PreparedStatement pst;
	
	String url = "jdbc:mysql://14.63.222.55/childcontents";
	String user = "childmind";
	String pass= "123458y";
	
	public boolean insertDB(member m){
		int result=0;
		
		try{
			Class.forName("com.mysql.jdbc.Driver"); 
			conn = DriverManager.getConnection(url, user, pass);
			
			
			pst = conn.prepareStatement("insert into member2 values(?,?,?,?,?,?,?,?)");
			
			pst.setString(1, m.getId());
			pst.setString(2, m.getPassword());
			pst.setString(3, m.getPosition());
			pst.setString(4, m.getName());
			pst.setString(5, m.getGender());
			pst.setString(6, m.getBirthday());
			pst.setString(7, m.getEmail());
			pst.setString(8, m.getPhone());
			
			result=pst.executeUpdate();
			
		}catch(Exception e){
			System.out.println(e);
		}finally{
			try{pst.close();}catch(SQLException e){}
			try{conn.close();}catch(SQLException e){}
		}
		
		if(result > 0) return true;
		else return false;
	}
}
