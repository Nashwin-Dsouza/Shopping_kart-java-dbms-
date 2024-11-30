package cn.techtutorial.model;

public class Employee {
	private String username;
	private int p_id;
	private int o_id;
	private String p_name;
	private String category;
	private Double price;
	private int quantity;
	private String date;
	
	public Employee() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Employee(String username, int p_id, int o_id, String p_name, String category, Double price, int quantity,
			String date) {
		
		this.username = username;
		this.p_id = p_id;
		this.o_id = o_id;
		this.p_name = p_name;
		this.category = category;
		this.price = price;
		this.quantity = quantity;
		this.date = date;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public int getP_id() {
		return p_id;
	}
	public void setP_id(int p_id) {
		this.p_id = p_id;
	}
	public int getO_id() {
		return o_id;
	}
	public void setO_id(int o_id) {
		this.o_id = o_id;
	}
	public String getP_name() {
		return p_name;
	}
	public void setP_name(String p_name) {
		this.p_name = p_name;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public Double getPrice() {
		return price;
	}
	public void setPrice(Double price) {
		this.price = price;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	@Override
	public String toString() {
		return "Employee [username=" + username + ", p_id=" + p_id + ", o_id=" + o_id + ", p_name=" + p_name
				+ ", category=" + category + ", price=" + price + ", quantity=" + quantity + ", date=" + date + "]";
	}
	
	
	
	
	
	
	
}