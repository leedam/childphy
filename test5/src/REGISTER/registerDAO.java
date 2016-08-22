package REGISTER;

import java.sql.*;
import java.util.*;
import REGISTER.member;

public class registerDAO {
	Connection conn;
	PreparedStatement pst;
	ResultSet rs;
	
	String url = "jdbc:mysql://14.63.222.55/childcontents";
	String user = "childmind";
	String pass= "123458y";
	
	//회원가입할때
	public boolean addDB(member m){
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
			e.printStackTrace();
		}finally{
			try{pst.close();}catch(SQLException e){}
			try{conn.close();}catch(SQLException e){}
		}
		
		if(result > 0) return true;
		else return false;
	}
	
	//회원가입-id중복확인
	public boolean confirmID(String id) throws Exception {
		boolean result=false;
		
		
		try{
			Class.forName("com.mysql.jdbc.Driver"); 
			conn = DriverManager.getConnection(url, user, pass);
			pst = conn.prepareStatement("select id from member2 where id=?");
			pst.setString(1, id);
		
			rs=pst.executeQuery();
			
			if(rs.next()) result=false; //아이디 존재
			else result=true; //아이디 사용가능
			
		} catch(Exception e){
			e.printStackTrace();
		} finally {
			try{rs.close();}catch(SQLException e){}
			try{pst.close();}catch(SQLException e){}
			try{conn.close();}catch(SQLException e){}
		}
		return result;
	}
	
	//탈퇴할때
	public boolean deleteDB(String id, String password) throws Exception {
		boolean result=false;
		String db_password;

		try{
			Class.forName("com.mysql.jdbc.Driver"); 
			conn = DriverManager.getConnection(url, user, pass);
			pst = conn.prepareStatement("select pwd from member2 where id=?");
			pst.setString(1, id);
		
			rs=pst.executeQuery();
			
			if(rs.next()) {
				db_password = rs.getString("pwd");
				if(password.equals(db_password)){
					result=true; 
					pst = conn.prepareStatement("delete from member2 where id=?");
					pst.setString(1, id);
					pst.executeUpdate();
				}
				else result=false; 
			}
			
		} catch(Exception e){
			e.printStackTrace();
		} finally {
			try{rs.close();}catch(SQLException e){}
			try{pst.close();}catch(SQLException e){}
			try{conn.close();}catch(SQLException e){}
		}
		return result;
	}
	
	public void loadDB(String id, member m) throws Exception {

		try{
			Class.forName("com.mysql.jdbc.Driver"); 
			conn = DriverManager.getConnection(url, user, pass);
			pst = conn.prepareStatement("select * from member2 where id=?");
			pst.setString(1, id);
		
			rs=pst.executeQuery();
			
			if(rs.next()) {
				m.setId(rs.getString("id"));
				m.setPassword(rs.getString("pwd"));
				m.setPosition(rs.getString("position"));
				m.setName(rs.getString("name"));
				m.setGender(rs.getString("gender"));
				m.setBirthday(rs.getString("birthday"));
				m.setEmail(rs.getString("email"));
				m.setPhone(rs.getString("phonenum"));
			}
			
		} catch(Exception e){
			e.printStackTrace();
		} finally {
			try{rs.close();}catch(SQLException e){}
			try{pst.close();}catch(SQLException e){}
			try{conn.close();}catch(SQLException e){}
		}
		return;
	}
	
	//정보 수정할때
	public void updateDB(member m) throws Exception {
		System.out.println(m.getPassword());
		try{
			Class.forName("com.mysql.jdbc.Driver"); 
			conn = DriverManager.getConnection(url, user, pass);	

			pst = conn.prepareStatement("update member2 set pwd=?, email=?, phonenum=? where id=?");
			pst.setString(1, m.getPassword());
			pst.setString(2, m.getEmail());
			pst.setString(3, m.getPhone());
			pst.setString(4, m.getId());
			pst.executeUpdate();
			
		} catch(Exception e){
			e.printStackTrace();
		} finally {
			try{pst.close();}catch(SQLException e){}
			try{conn.close();}catch(SQLException e){}
		}
		return ;
	}
	
}
