package springmvc_search.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import springmvc_search.model.Student;

@Controller
public class FormController {
		
	@RequestMapping("/register")
	public String showForm()
	{
		return "form";
	}
	
	@RequestMapping(path="/processform", method=RequestMethod.POST)
	public String handleForm(@ModelAttribute("student") Student student)
	{
		System.out.println(student);
		System.out.println(student.getAddress());
		return "success";
	}

}
