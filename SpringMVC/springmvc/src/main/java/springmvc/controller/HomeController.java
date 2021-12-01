package springmvc.controller;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class HomeController {
	
	@RequestMapping("/")
	public String home(Model model)
	{
		model.addAttribute("name", "Kiyaan Islam");
		model.addAttribute("id", 101);
		
		List<String> friends = new ArrayList<String>();
		friends.add("Riyaan");
		friends.add("Ayaan");
		friends.add("Rohan");
		
        model.addAttribute("f", friends);
				
		return "index";
	}
	
	@RequestMapping("/about")
	public String about()
	{
		return "about";
	}
	
	@RequestMapping("/help")
	public ModelAndView help()
	{
		//creating ModelAndView object
		ModelAndView mv = new ModelAndView(); 
		
		//Setting data
		mv.addObject("h", "Happy to help you");	
		mv.addObject("case_id", 12345);
		
		LocalDateTime now = LocalDateTime.now();		
		mv.addObject("time", now);
				
		List<String> list = new ArrayList<String>();
		list.add("Guwahati");
		list.add("Delhi");
		list.add("Mumbai");
		list.add("Hyderabad");
		
		mv.addObject("city", list);
		
		//Setting ViewName
		mv.setViewName("help");  
		
		return mv;
	}

}





// It will be converted to ---> WEB-INF/views/help.jsp ---by ViewResolver declared in configuration file
