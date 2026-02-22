package com.example.demo.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.demo.bean.User;
import com.example.demo.dao.UserRepository;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class UserController {

	@Autowired
	UserRepository ur;
	
	//open index.jsp
	@RequestMapping("/")
	public String Index() {
		return "index";
	}
	
	//open contact.jsp
	@RequestMapping("/contact")
	public String contact() {
		return "contact";
	}
	
	//open about.jsp
		@RequestMapping("/about")
		public String about() {
			return "about";
		}
	
	
			

	
	@RequestMapping("/registerform")
	public String registerform() {
		return "registerform";
	}
	
	@RequestMapping("/register")
	public String register(User u) {
		
		ur.save(u);
		return "index";
	}
	
	@RequestMapping("/show")
	public String show(HttpSession session) {
		
		List<User> userdata = (List<User>)ur.findAll();
		session.setAttribute("list", userdata);
		
		return "show";
	}
	
	@RequestMapping("/delete")
	public String delete(int user_id) {
		
		ur.deleteById(user_id);
		
		//redirect to the show method
		return "redirect:/show";
		
	}
	
	
	@RequestMapping("/update")
	public String update() {
		
		
		
		return "update";
	}
	
	@RequestMapping("/showdatabyid")
	public String showdatabyid(@RequestParam("user_id") int user_id, HttpSession session) {

	    Optional<User> o = ur.findById(user_id);

	    if (o.isPresent()) {
	        session.setAttribute("data", o.get());  // store User object
	        return "update";
	    } else {
	        session.setAttribute("msg", "User not found!");
	        return "redirect:/show";
	    }
	}

	
	
	
	@RequestMapping("/updatesave")
	public String updatesave(User u) {
		
		ur.save(u);
		
		
		return "redirect:/show";
	}
	
	
	//login 
	@RequestMapping("/login")
	public String login() {
		return "login";
	}
	
	@RequestMapping("/loginData")
	public String loginData(User u,HttpSession session) {
		
		ArrayList<User> list = (ArrayList<User>) ur.findAll();
		
		for(User u1 : list) {
			if(u1.getEmail().equals(u.getEmail()) && u1.getPassword().equals(u.getPassword())) {
				
				session.setAttribute("userlogindata", u1);
				return "index";
			}
		}

		return "login";
	
		}
	
	
	//logout
	
	@RequestMapping("/logout")
	public String logout(HttpSession session) {
		
		
		session.removeAttribute("name");
		
		return "index";
	}
	
	//open forgetPassword.jsp
	@RequestMapping("/forgotPassword")
	public String forwardPassword() {
		return "forgotPassword";
	}
	
	@RequestMapping("/forgotPasswordData")
	public String forwardPasswordData(User u)  {
		
		ArrayList<User> list = (ArrayList<User>) ur.findAll();
		
		for(User u1 : list) {
			if(u1.getEmail().equals(u.getEmail())) {
				//	Optional<User> o = ;
				return "setPassword";
			}else {
				return "forgotPassword";
			}
		}
		
		return "setPassword";
	}
		
	//open setPassword.jsp
		@RequestMapping("/setPassword")
		public String setPassword() {
			return "setPassword";
		}
}
