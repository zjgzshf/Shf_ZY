package org.niit.com.service.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.niit.com.bean.UserInfo;
import org.niit.com.service.DbService;

public class DbServiceImpl implements DbService {

	private String msg;
	private DataSource ds;
	
	public void setMsg(String msg) {
		this.msg = msg;
		
	}
	
	public void setDs(DataSource ds) {
		this.ds = ds;
	}



	@Override
	public void showMsg() {
		System.out.println("This is "+msg);
	}

	@Override
	public int insert(UserInfo info) {
		if(info == null){
			return 0;
		}
	
		String sql = "insert into userinfo (loginname,password) values (?,?)";
		Connection con = null;
		
		try{
			con = ds.getConnection();
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, info.getLoginname());
			ps.setString(2, info.getPassword());
			
			int result = ps.executeUpdate();
			return result;

		}catch(SQLException e){
			e.printStackTrace();
		}finally{
			try{
				con.close();
			}catch(Exception e){
				e.printStackTrace();
			}
		}
		
		return 0;
	}

	@Override
	public int delete(int id) {
		String sql = "delete from userinfo where userid = ? ";
		Connection con = null;
		
		try{
			con = ds.getConnection();
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, id);
			
			int result = ps.executeUpdate();
			return result;

		}catch(SQLException e){
			e.printStackTrace();
		}finally{
			try{
				con.close();
			}catch(Exception e){
				e.printStackTrace();
			}
		}
		
		return 0;
	}

	@Override
	public int update(UserInfo info) {
		if(info == null){
			return 0;
		}
		
		String sql = "update userinfo set loginname = ? , password = ? where userid = ?";
		Connection con = null;
		
		try{
			con = ds.getConnection();
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, info.getLoginname());
			ps.setString(2, info.getPassword());
			ps.setInt(3, info.getUserid());
			
			int result = ps.executeUpdate();
			return result;

		}catch(SQLException e){
			e.printStackTrace();
		}finally{
			try{
				con.close();
			}catch(Exception e){
				e.printStackTrace();
			}
		}
		
		return 0;
	}

	@Override
	public List<UserInfo> getInfo(int id) {
		String sql = "select * from userinfo ";
		Connection con = null;
		
		try{
			con = ds.getConnection();
			Statement stmt = con.createStatement();
			if(id != 0){
				sql += " where userid = "+id;
			}
			sql += " order by userid";
			ResultSet rs = stmt.executeQuery(sql);
			
			List<UserInfo> infoList = new ArrayList<>();
			while(rs.next()){
				UserInfo inf = new UserInfo();
				inf.setUserid(rs.getInt("userid"));
				inf.setLoginname(rs.getString("loginname"));
				inf.setPassword(rs.getString("password"));
				infoList.add(inf);
			}
			
			return infoList;

		}catch(SQLException e){
			e.printStackTrace();
		}finally{
			try{
				con.close();
			}catch(Exception e){
				e.printStackTrace();
			}
		}
		
		return null;
	}

}
