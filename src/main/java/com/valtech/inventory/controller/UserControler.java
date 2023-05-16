package com.valtech.inventory.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.valtech.dao.UserDao;
import com.valtech.model.User;

@Controller
public class UserControler {

	@Autowired
	private UserDao userDao;

	// list of user manager
	@RequestMapping("/managerList")
	public String getAllUsers(Model m) {
		List<User> list = userDao.getUsers();
		m.addAttribute("list", list);
		System.out.println("list of roles displayed");
		return "managerList";
	}

	// deleteing the user manager
	@RequestMapping(value = "/deleteUser/{id}", method = RequestMethod.GET)
	public String delete(@PathVariable int id) {
		userDao.deleteUser(id);
		return "redirect:/managerList";
	}
	
	
	
	
	  @RequestMapping("/addManager")  
	    public String showform(Model m){  
	    	m.addAttribute("command", new User());
	    	return "addManager"; 
	    }  
	
	// edit the manager
	@RequestMapping(value = "/editManager/{id}")
	public String edit(@PathVariable int id, Model m) {
		User user = userDao.getUserbyUser(id);
		m.addAttribute("command", user);
		return "editManager";
	}

	@RequestMapping(value = "/editsave", method = RequestMethod.POST)
	public String editsave(@ModelAttribute("user") User user) {
		userDao.updateUser(user);
		return "redirect:/managerList";
	}

	

	@RequestMapping(value = "/save", method = RequestMethod.POST)
	public String save(@ModelAttribute("user") User user) {
		userDao.save(user);
		return "redirect:/managerList";// will redirect to viewemp request mapping

	}
	
	//login

	/*
	 * @RequestMapping(value = "/index", method = RequestMethod.GET) public String
	 * showLoginForm(ModelMap model) { model.addAttribute("user", new User());
	 * return "index"; }
	 */
     @RequestMapping(value = "/index", method = RequestMethod.POST)
     public String processLogin(@ModelAttribute("user") User user,
                                BindingResult result,
                                ModelMap model,
                                HttpSession session) {
         String email = user.getEmail();
         String password = user.getPassword();
         User loggedInCustomer = userDao.findByEmailAndPassword(email, password);
         if (loggedInCustomer != null) {
             session.setAttribute("user", loggedInCustomer);
             if (loggedInCustomer.getRole().equals("user"))
             {
                 return "productList";
             } else if (loggedInCustomer.getRole().equals("admin")) {
                 return "managerList";
             }
         } else {
             model.addAttribute("error", "Invalid email or password");
             return "index";
         }
         return null;
     }
	
	
	
	
	/*
	 * // Get all users
	 * 
	 * @GetMapping public ResponseEntity<List<User>> getAllUsers() { List<User>
	 * users = userDao.getAllUsers(); return new ResponseEntity<>(users,
	 * HttpStatus.OK); }
	 */

	/*
	 * // Get user by ID
	 * 
	 * @GetMapping("/{id}") public ResponseEntity<User>
	 * getUserById(@PathVariable("id") int id) { User user =
	 * userDao.getUserByrole(id); if (user != null) { return new
	 * ResponseEntity<>(user, HttpStatus.OK); } else { return new
	 * ResponseEntity<>(HttpStatus.NOT_FOUND); } }
	 * 
	 * // Create new user
	 * 
	 * @PostMapping public ResponseEntity<User> createUser(@RequestBody User user) {
	 * userDao.createUser(user); return new ResponseEntity<>(user,
	 * HttpStatus.CREATED); }
	 * 
	 * // Update existing user
	 * 
	 * @PutMapping("/{id}") public ResponseEntity<User>
	 * updateUser(@PathVariable("id") int id, @RequestBody User user) { User
	 * existingUser = userDao.getUserByrole(id); if (existingUser != null) {
	 * user.setUserId(id); userDao.updateUser(user); return new
	 * ResponseEntity<>(user, HttpStatus.OK); } else { return new
	 * ResponseEntity<>(HttpStatus.NOT_FOUND); } }
	 * 
	 * // Delete user by ID
	 * 
	 * @DeleteMapping("/{id}") public ResponseEntity<Void>
	 * deleteUser(@PathVariable("id") int id) { User user =
	 * userDao.getUserByrole(id); if (user != null) { userDao.deleteUser(id); return
	 * new ResponseEntity<>(HttpStatus.NO_CONTENT); } else { return new
	 * ResponseEntity<>(HttpStatus.NOT_FOUND); } }
	 */

}
