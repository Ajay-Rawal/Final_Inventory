package com.valtech.inventory.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.valtech.dao.ProductDAO;
import com.valtech.model.Product;



@Controller
public class ProductController {

	@Autowired
	ProductDAO productDAO;
	
	// list of All product
	@RequestMapping("/productList")
	public String getAllProducts(Model m) {
		List<Product> list = productDAO.getAllProducts();
		m.addAttribute("list", list);
		System.out.println("list of Product displayed");
		return "productList";
	
}
	
	// edit the product
		@RequestMapping(value = "/editProduct/{id}")
		public String edit(@PathVariable int id, Model m) {
			Product product = productDAO.getProductById(id);
			m.addAttribute("command", product);
			return "editProduct";
		}

		@RequestMapping(value = "/editsaveproduct", method = RequestMethod.POST)
		public String editsave(@ModelAttribute("product") Product product) {
			productDAO.updateProduct(product);
			return "redirect:/productList";
		}
		
		 @RequestMapping("/addProduct")  
		    public String showform(Model m){  
		    	m.addAttribute("command", new Product());
		    	return "addProduct"; 
		    }  
		
		
		
		@RequestMapping(value = "/saveproduct", method = RequestMethod.POST)
		public String save(@ModelAttribute("product") Product product) {
			productDAO.save(product);
			return "redirect:/productList";// will redirect to viewemp request mapping

		}
		
		// deleteing the Products
		@RequestMapping(value = "/deleteproduct/{id}", method = RequestMethod.GET)
		public String delete(@PathVariable int id) {
			productDAO.deleteProduct(id);
			return "redirect:/productList";
		}
		
	
	
}