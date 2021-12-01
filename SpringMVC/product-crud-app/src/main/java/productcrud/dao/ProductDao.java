package productcrud.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;

import productcrud.model.Product;

@Component   //allows Spring to automatically detect our custom beans, i.e- spring will create object of this class when needed and we can the use the object
public class ProductDao {
	
	@Autowired // object of HibernateTemplate will be injected here
	private HibernateTemplate hibernateTemplate;
	
	
	/* Create Product */
	
	@Transactional  //to save into database
	public void createProduct(Product product) {
		
		this.hibernateTemplate.saveOrUpdate(product);
		
	}
	
	/* Get all Products */
	
	public List<Product> getProducts(){
		List<Product> products = this.hibernateTemplate.loadAll(Product.class);
		
		return products;
	}
	
	/* Delete a single product */
	
	@Transactional
	public void deleteProduct(int pid) {
		Product p = this.hibernateTemplate.load(Product.class, pid);
		this.hibernateTemplate.delete(p);
	}
	
	/* Get a Single Product */
	
	public Product getProduct(int pid) {
		Product p = this.hibernateTemplate.get(Product.class, pid);
		return p;
	}

}
