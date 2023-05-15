package com.valtech.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.valtech.model.Product;
import com.valtech.model.User;
import com.valtech.model.Warehouse;


public class WarehouseDAO {

	@Autowired
	JdbcTemplate jdbcTemplate;

	public List<Warehouse> getAllWarehouses() {
		String sql = "SELECT * FROM warehouse";
		List<Warehouse> warehouses = jdbcTemplate.query(sql, new BeanPropertyRowMapper<>(Warehouse.class));
		return warehouses;
	}
	
//	public List<User> getWarehouse(){  
//	    return jdbcTemplate.query("SELECT * FROM warehouse",new RowMapper<User>(){  
//	        public Warehouse mapRow(ResultSet rs, int row) throws SQLException {  
//	        	Warehouse li=new Warehouse();
//	        	li.setWid(rs.getInt(1));
//	        	li.setWname(rs.getString(2));
//	        	li.setWaddress(rs.getString(3));
//	        	li.set
//	            User li=new User();  
//	            li.setUserId(rs.getInt(1));
//	            li.setUsername(rs.getString(2));
//            li.setPassword(rs.getString(3));
//	            li.setEmail(rs.getString(4));
//	            li.setRole(rs.getString(5));
//	          
//	            return li;  
//	        }  
//	    });  
//	
//	}
	
	

//	public List<Product> getProductByuserId(int userId) {
//
//		String sql = "SELECT * FROM product WHERE userId = ?";
//
//		return jdbcTemplate.query(sql, new Object[] { userId }, new ProductRowMapper());
//
//		}
//	
//		class ProductRowMapper implements RowMapper<Product> {
//
//		@Override
//
//		public Product mapRow(ResultSet rs, int rowNum) throws SQLException {
//
//			Product product = new Product();
//
//			product.setProduct_id(rs.getInt(1));
//
//			product.setProduct_name(rs.getString(2));
//
//			product.setDescription(rs.getString(3));
//
//			product.setPrice(rs.getFloat(4));
//
//			product.setUserId(rs.getInt(5));
//
//			product.setPquantity(rs.getInt(6));
//
//			product.setCid(rs.getInt(7));
//
//		return product;
//
//		}
		
	
	
	public Warehouse getWarehouseById(int id) {
		String sql = "SELECT * FROM warehouse WHERE Wid=?";
		Warehouse warehouse = jdbcTemplate.queryForObject(sql, new Object[] { id },
				new BeanPropertyRowMapper<>(Warehouse.class));
		return warehouse;
	}

	public void addWarehouse(Warehouse warehouse) {
		String sql = "INSERT INTO warehouse (Wid, Wname, Waddress, product_id, inventory_id) VALUES (?, ?, ?, ?, ?)";
		jdbcTemplate.update(sql, warehouse.getWid(), warehouse.getWname(), warehouse.getWaddress(),
				warehouse.getProduct_id(), warehouse.getInventory_id());
	}

	public void updateWarehouse(Warehouse warehouse) {
		String sql = "UPDATE warehouse SET Wname=?, Waddress=?, product_id=?, inventory_id=? WHERE Wid=?";
		jdbcTemplate.update(sql, warehouse.getWname(), warehouse.getWaddress(), warehouse.getProduct_id(),
				warehouse.getInventory_id(), warehouse.getWid());
	}

	public void deleteWarehouse(int id) {
		String sql = "DELETE FROM warehouse WHERE Wid=?";
		jdbcTemplate.update(sql, id);
	}
}

