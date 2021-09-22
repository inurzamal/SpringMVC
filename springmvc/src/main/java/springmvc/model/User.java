package springmvc.model;

public class User {
	
	private String name;
	private String email;
	private String pass;
	
	
	public User() {
		super();
		// TODO Auto-generated constructor stub
	}
	

	public User(String name, String email, String pass) {
		super();
		this.name = name;
		this.email = email;
		this.pass = pass;
	}


	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	
	
	@Override
	public String toString() {
		return "User [name=" + name + ", email=" + email + ", pass=" + pass + "]";
	}
	
	
	

}
