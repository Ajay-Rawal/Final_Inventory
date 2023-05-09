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

public class ProductDAO {
    
	@Autowired
    private JdbcTemplate jdbcTemplate;
    
    public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }
    
    // CREATE
    public void addProduct(Product product) {
        String sql = "INSERT INTO product (product_name, description, price, Pquantity) VALUES (?, ?, ?, ?)";
        jdbcTemplate.update(sql, product.getProduct_name(), product.getDescription(), product.getPrice(), product.getPquantity());
    }
    
    // READ
    public Product getProductById(int product_id) {
        String sql = "SELECT * FROM product WHERE product_id=?";
        Product product = jdbcTemplate.queryForObject(sql, new Object[] {product_id}, new BeanPropertyRowMapper<Product>(Product.class));
        return product;
    }
    
	
 // Get all Product
 	public List<Product> getAllProducts(){  
 	    return jdbcTemplate.query("select * from Product where product_id !=11",new RowMapper<Product>(){  
 	        public Product mapRow(ResultSet rs, int row) throws SQLException {  
 	        	Product li=new Product();  
 	            li.setProduct_id(rs.getInt(1));
 	            li.setProduct_name(rs.getString(2));
 	            li.setDescription(rs.getString(3));
 	            li.setPrice(rs.getFloat(4));
 	            li.setPquantity(rs.getInt(5));
 	            li.setCid(rs.getInt(6));
 	          
 	            return li;  
 	        }  
 	    });
 	}
 	

    // UPDATE
    public void updateProduct(Product product) {
        String sql = "UPDATE product SET product_name=?, description=?, price=?, Pquantity=? WHERE product_id=?";
        jdbcTemplate.update(sql, product.getProduct_name(), product.getDescription(), product.getPrice(), product.getPquantity(), product.getProduct_id());
    }
    
  //save method
  		public int save(Product product) {
  			String sql = "INSERT INTO product (product_id,product_name, description, price, Pquantity,Cid) VALUES (?,?, ?, ?, ?,?)";
  	        return jdbcTemplate.update(sql, product.getProduct_id(),product.getProduct_name(), product.getDescription(), product.getPrice(), product.getPquantity(),product.getCid());
  	    }
    
    // DELETE
    public void deleteProduct(int product_id) {
        String sql = "DELETE FROM product WHERE product_id=?";
        jdbcTemplate.update(sql, product_id);
    }
}
