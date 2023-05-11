package com.valtech.inventory.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.valtech.dao.UserDao;

@Controller
public class LoginController{

	@Autowired
	UserDao userDao;
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String init(Model model) {
	model.addAttribute("msg", "Please Enter Your Login Details");
	return "login";
	}
	
	
	  @RequestMapping(value ="loginCheck" ,method = RequestMethod.POST)
	  public String submit(Model model, @RequestAttribute String
	  username,@RequestAttribute String password) { 
		  if (username != null && password != null) {
			  if (username.equals("admin") && password.equals("admin"))
	  {
	  	  return "redirect:/managerList"; } 
	  if (username.equals("MANAGER") && password.equals("MANAGER"))
			  {
			 return "redirect:/productList";
			  } 
			  else { model.addAttribute("error", "Invalid Details");
			  return "login"; 
	  } 
			  } 
		  else { model.addAttribute("error","Please enter Details");
		  			return "login";
	  
	  }
	  
	  
	  
	  
	  } }
	

//    @RequestMapping(value ="loginCheck" ,method = RequestMethod.POST)
//    public String submit(@Validated @ModelAttribute("user") User user,
//                         BindingResult result,Model model) {
//    	
//    	User user1 = userDao.getUserbyUserName(user1.getUsername());
//		/*
//		 * User user = userDao.getUserbyUserName(user.getUsername());
//		 */        
//        if(user1 == null) {
//            throw new UsernameNotFoundException("Invalid username or password.");
//        }
//        
//        if(!user1.getPassword().equals(user1.getPassword())) {
//            throw new UsernameNotFoundException("Invalid username or password.");
//        }
//        
//        List<GrantedAuthority> authorities = new ArrayList<>();
//        
//        if(user1.getRole().equalsIgnoreCase("admin")) {
//            authorities.add(new SimpleGrantedAuthority("ADMIN"));
//        } else {
//            authorities.add(new SimpleGrantedAuthority("MANAGER"));
//        }
//        
//        User usr = new User(user1.getUsername(),user1.getPassword(),authorities);
//
//        
//        
//        
//        if (result.hasErrors()) {
//            return "login";
//        } else {
//            return "redirect:/managerList";
//        }
//    }
//    
//    @RequestMapping(value = "/managerList", method = RequestMethod.GET)
//    public String showManagerList() {
//        return "managerList";
//    }
//}
//	
	


  
 

