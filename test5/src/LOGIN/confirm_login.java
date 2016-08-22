package LOGIN;
import java.sql.*;

public class confirm_login {
	Connection conn;
	PreparedStatement pst;
	ResultSet rs;
	
	String url = "jdbc:mysql://14.63.222.55/childcontents";
	String user = "childmind";
	String pass= "123458y";
	
	String position;
	String name;
	
	public boolean loginCheck(String id, String pw){
		boolean result = false;
		
		try{
			Class.forName("com.mysql.jdbc.Driver"); 
			conn = DriverManager.getConnection(url, user, pass);
			String sql="select * from member2 where id=? and pwd=?";
			
			pst = conn.prepareStatement(sql);
			
			pst.setString(1, id);
			pst.setString(2, pw);
			
			rs=pst.executeQuery();
			
			if(rs.next()){
				//로그인 가능
				if(rs.getString("pwd").equals(pw)) {
					position = rs.getString("position");
					name = rs.getString("name");
					result = true;
				}
				else result = false;
				//비밀번호 틀림
			}
			else result = false; //아이디 없음
			
		}catch(Exception e){
			System.out.println(e);
		}finally{
			try{rs.close();}catch(SQLException e){}
			try{pst.close();}catch(SQLException e){}
			try{conn.close();}catch(SQLException e){}
		}
		return result;
	}
	
	public String getPosition(){ return position; }
	
}
