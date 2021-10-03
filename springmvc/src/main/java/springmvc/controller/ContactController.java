package springmvc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import springmvc.model.User;
import springmvc.service.UserService;

@Controller
public class ContactController {
	
	@Autowired
	private UserService userService;
	
	@ModelAttribute
	public void commonData(Model m) {		
		m.addAttribute("Header", "Coding Terminal");
		m.addAttribute("Desc", "The Dev World");
		m.addAttribute("Msg", "These data are collected from user form");		
	}
	
	@RequestMapping("/contact")
	public String showForm(Model m)
	{
//		m.addAttribute("Header", "Coding Terminal");
		return "contact";
	}
	
	@RequestMapping(path = "/processform", method=RequestMethod.POST)	
	public String HandleForm(@ModelAttribute User user, Model model) {
		
//		model.addAttribute("Msg", "These data are collected from user form");
				
		if(user.getName().isBlank())
		{
			return "redirect:/contact";
		}
		
		int id = this.userService.createUser(user);
		
		model.addAttribute("ss", "User created with id "+id);
		
		return "success";
		
	}

}













/***
 * 
 * 
 * package springmvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import springmvc.model.User;

@Controller
public class ContactController {
	
	@RequestMapping("/contact")
	public String showForm()
	{
		return "contact";
	}
	
	@RequestMapping(path = "/processform", method=RequestMethod.POST)
	public String HandleForm(
			@RequestParam("name") String userName,
			@RequestParam("email") String userEmail,
			@RequestParam("pass") String password, Model model) {

		User user = new User();
		
		user.setName(userName);
		user.setEmail(userEmail);
		user.setPass(password);
		
		model.addAttribute("user", user);

		
		return "success";
		
	}

}
 * 
 * 
 * 
 */






/*
 * 
 * package springmvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class ContactController {
	
	@RequestMapping("/contact")
	public String showForm()
	{
		return "contact";
	}
	
	@RequestMapping(path = "/processform", method=RequestMethod.POST)
	public String HandleForm(
			@RequestParam("name") String userName,
			@RequestParam("email") String userEmail,
			@RequestParam("pass") String password, Model model) {

		//System.out.println(userName +" "+userEmail+" "+password);
		//we can process the data here and store in database
		
		model.addAttribute("name", userName);
		model.addAttribute("email", userEmail);
		model.addAttribute("pass", password);
		
		return "success";
		
	}

}

*
*
*/
