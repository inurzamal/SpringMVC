package springmvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.view.RedirectView;

@Controller
public class RedirectController {

	@RequestMapping("/one")
	public RedirectView one()
	{
		RedirectView redirectView = new RedirectView();
		redirectView.setUrl("https://www.google.com");
		return redirectView;
	}
	
	@RequestMapping("/two")
	public String two()
	{
		return "contact";
	}
}






/* Internal Redirect
 * 
 * 

	@Controller
	public class RedirectController {
	
		@RequestMapping("/one")
		public String one()
		{
			return "redirect:/two";
		}
		
		@RequestMapping("/two")
		public String two()
		{
			return "contact";
		}
		
		
	//	@RequestMapping("/one")
	//	public RedirectView one()
	//	{
	//		RedirectView redirectView = new RedirectView();
	//		redirectView.setUrl("two");
	//		return redirectView;
	//	}
	//	
	//	@RequestMapping("/two")
	//	public String two()
	//	{
	//		return "contact";
	//	}
  
 
 
}



*
*
*/



/* External Redirect 
 * 
 * 


@Controller
public class RedirectController {

	@RequestMapping("/one")
	public RedirectView one()
	{
		RedirectView redirectView = new RedirectView();
		redirectView.setUrl("https://www.google.com");
		return redirectView;
	}
	
	@RequestMapping("/two")
	public String two()
	{
		return "contact";
	}
}





*/
