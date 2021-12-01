package productcrud.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.view.RedirectView;

import productcrud.dao.ProductDao;
import productcrud.model.Product;

@Controller
public class MainController {
	
	@Autowired
	private ProductDao productDao;
	
	@RequestMapping("/")
	public String home(Model m)
	{
		List<Product> products = productDao.getProducts();
		m.addAttribute("product", products);
		return "index";
	}
	
	@RequestMapping("/addproduct")
	public String addProduct(Model m) {
		m.addAttribute("title", "add product");
		return "add_product_form";
	}
	
//	@RequestMapping(value="/handle-product", method=RequestMethod.POST)
//	public String handleProduct(@ModelAttribute Product product) {
//		System.out.println(product);
//		productDao.createProduct(product);
//		return "add_product_form";
//	}
	
	@RequestMapping(value="/handle-product", method=RequestMethod.POST)
	public RedirectView handleProduct(@ModelAttribute Product product, HttpServletRequest r ) {
		System.out.println(product);
		productDao.createProduct(product);
		RedirectView redirectview = new RedirectView();
		redirectview.setUrl(r.getContextPath()+"/");	
		return redirectview;
	}
	
	
	/* Delete Handler */
	
	@RequestMapping("/delete/{productId}")
	public RedirectView deleteProduct(@PathVariable("productId") int pid, HttpServletRequest r) {
		this.productDao.deleteProduct(pid);
		RedirectView redirectview = new RedirectView();
		redirectview.setUrl(r.getContextPath()+"/");	
		return redirectview;
	}
	
	/* Update Handler */
	
	@RequestMapping("/update/{productId}")
	public String updateForm(@PathVariable("productId") int pid, Model m) {
		
		Product p = this.productDao.getProduct(pid);
		m.addAttribute("product", p);
		
		return "update_form";
	}


}
