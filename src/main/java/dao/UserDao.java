package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import bean.User;

public class UserDao {
	//get database connection
	public static Connection getConnection() {
		Connection con= null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			//jdbc:mysql://localhost:3306/test_database?characterEncoding=utf8
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test_database", "root", "root");
		}catch(Exception e) {
			System.out.println(e);
		}
		return con;
	}
	
	//save user
	public static int saveUser(User u) throws SQLException {
		Connection con= getConnection();
		String savequery="insert into register(name, password, email, sex, country) values(?,?,?,?,?)";
		PreparedStatement pstm= con.prepareStatement(savequery);
		
		pstm.setString(1, u.getName());
		pstm.setString(2, u.getPassword());
		pstm.setString(3, u.getEmail());
		pstm.setString(4, u.getSex());
		pstm.setString(5, u.getCountry());
		int status= pstm.executeUpdate();
		
		return status;
		
	}
	
	public static List<User> getAllRecords(){
		List<User> alluser= new ArrayList<>();
		Connection con=getConnection();
		try {
			PreparedStatement pst= con.prepareStatement("select * from register");
			ResultSet rs= pst.executeQuery();
			while(rs.next()) {
				User u= new User();
				u.setId(rs.getInt("id"));
				u.setName(rs.getString("name"));
				u.setPassword(rs.getString("password"));
				u.setEmail(rs.getString("email"));
				u.setSex(rs.getString("sex"));
				u.setCountry(rs.getString("country"));
				
				alluser.add(u);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return alluser;
	}
	
	public static User getById(int id) {
		User u= null;
		Connection con=getConnection();
		try {
			PreparedStatement pst= con.prepareStatement("select * from register where id=?");
			pst.setInt(1, id);
			ResultSet rs= pst.executeQuery();
			while(rs.next()) {
				u= new User();
				u.setId(rs.getInt("id"));
				u.setName(rs.getString("name"));
				u.setPassword(rs.getString("password"));
				u.setEmail(rs.getString("email"));
				u.setCountry(rs.getString("country"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return u;
	}
	
	public static int updateUser(User u) throws SQLException {
		System.out.println("Id for update..."+u.getId());
		Connection con=getConnection();
	    PreparedStatement pst=con.prepareStatement(  
	    		   "update register set name=?,password=?,email=?,sex=?,country=? where id=?"); 
		pst.setString(1, u.getName());
		pst.setString(2, u.getPassword());
		pst.setString(3, u.getEmail());
		pst.setString(4, u.getSex());
		pst.setString(5, u.getCountry());
		pst.setInt(6,u.getId());  
		int status=pst.executeUpdate();
		System.out.println("update status.."+status);
		return status;
		
	}
}
