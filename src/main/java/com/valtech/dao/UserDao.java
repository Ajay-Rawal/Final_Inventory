package com.valtech.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.valtech.model.User;


public class UserDao {
	
	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	

	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}

	// Create a new user
	public void createUser(User user) {
		String sql = "INSERT INTO user (username, password, email, role) VALUES (?, ?, ?, ?)";
		jdbcTemplate.update(sql, user.getUsername(), user.getPassword(), user.getEmail(), user.getRole());
	}

	
	// Get a user by ID
		public User getUserbyUser(int userId) {
			String sql = "SELECT * FROM user WHERE userId = ?";
			User user = jdbcTemplate.queryForObject(sql, new Object[] { userId }, new BeanPropertyRowMapper<User>(User.class));
			return user;
		}
	
		
		
		//save method
		public int save(User user) {
			String sql = "INSERT INTO user (username, password, email, role) VALUES (?, ?, ?, ?)";
			return jdbcTemplate.update(sql, user.getUsername(), user.getPassword(), user.getEmail(), user.getRole());
		}

	// Get all users
	public List<User> getUsers(){  
	    return jdbcTemplate.query("select * from user where userId > 1",new RowMapper<User>(){  
	        public User mapRow(ResultSet rs, int row) throws SQLException {  
	            User li=new User();  
	            li.setUserId(rs.getInt(1));
	            li.setUsername(rs.getString(2));
	            li.setPassword(rs.getString(3));
	            li.setEmail(rs.getString(4));
	            li.setRole(rs.getString(5));
	          
	            return li;  
	        }  
	    });  
	
	}
	// Update a user
	public void updateUser(User user) {
		String sql = "UPDATE user SET username = ?, password = ?, email = ?, role = ? WHERE userId = ?";
		jdbcTemplate.update(sql, user.getUsername(), user.getPassword(), user.getEmail(), user.getRole(), user.getUserId());
	}

	// Delete a user by ID
	public void deleteUser(int userId) {
		String sql = "DELETE FROM user WHERE userId = ?";
		jdbcTemplate.update(sql, userId);
	}
}
