package springmvc_search.controller;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import springmvc_search.model.Student;

@Controller
public class FormController {
		
	@RequestMapping("/register")
	public String showForm()
	{
		return "form";
	}
	
	@RequestMapping(path="/processform", method=RequestMethod.POST)
	public String handleForm(@ModelAttribute("student") Student student, BindingResult result)
	{
		if(result.hasErrors())
		{return "form";}
		
		System.out.println(student);
		System.out.println(student.getAddress());
		return "success";
	}
	
	@RequestMapping("/file")
	public String fileForm() {
		return "form-file";
	}
	
	@RequestMapping(value="/uploadimage", method=RequestMethod.POST)
	public String formHandler(@RequestParam("img1") CommonsMultipartFile file1)
	{
		System.out.println("File Uploaded..");
		System.out.println(file1.getContentType());
		System.out.println(file1.getName());
		System.out.println(file1.getOriginalFilename());
		System.out.println(file1.getSize());
		//System.out.println(file1.getStorageDescription());
		
		System.out.println(file1.getBytes());
		
		
		return "filesuccess";
	}

}
