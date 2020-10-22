package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.conn.MyCon;
import com.dto.User;

public class UserDaoImple implements UserDao {
	
	private MyCon myCon;
	
	public UserDaoImple() {
		myCon = new MyCon(); 
	}

	@Override
	public int insertUser(User usr) {
		int i = 0;
		try
		{
			Connection con = myCon.getConn();
			PreparedStatement ps = con.prepareStatement("insert into new_usr(f_name,u_name,pass) values(?,?,?)");
			ps.setString(1, usr.getFullName());
			ps.setString(2, usr.getUserName());
			ps.setString(3, usr.getUserPass());
			i= ps.executeUpdate();
			System.out.println(usr.getFullName());
			ps.close();
		}
		catch(ClassNotFoundException classExc)
		{
			classExc.printStackTrace();
		}
		catch(SQLException sqlExc)
		{
			sqlExc.printStackTrace();
		}
		return i;
	}

	@Override
	public boolean login(User usr) {
		boolean flag = false;
		try {
			Connection con = myCon.getConn();
			PreparedStatement s = con.prepareStatement(
					"select * from new_usr where u_name = ? and pass = ?");
			s.setString(1, usr.getUserName());
			s.setString(2, usr.getUserPass());
			ResultSet rs = s.executeQuery();
			if(rs.next()) {
				usr.setUserId(rs.getInt("u_id")); 
				flag = true;
			}
			s.close();
		}catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		return flag;
	}

}
