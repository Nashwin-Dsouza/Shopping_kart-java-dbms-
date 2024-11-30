package cn.techtutorial.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import cn.techtutorial.model.Employee;

public class EmployeeuserDao{
	private Connection con;

	private String query;
    private PreparedStatement pst;
    private ResultSet rs;
    

	public EmployeeuserDao(Connection con) {
		super();
		this.con = con;
	}
	
	
	public List<Employee> getAllOrders() {
        List<Employee> book = new ArrayList<>();
        try {

            query = "select * from userorder";
            pst = this.con.prepareStatement(query);
            rs = pst.executeQuery();
            while (rs.next()) {
            	Employee row = new Employee();
            	
            	row.setUsername(rs.getString("name"));
            	row.setO_id(rs.getInt("o_id"));
                row.setP_id(rs.getInt("p_id"));
                row.setP_name(rs.getString("p_name"));
                row.setCategory(rs.getString("p_category"));
                row.setPrice(rs.getDouble("p_price"));
                row.setQuantity(rs.getInt("o_quantity"));
                row.setDate(rs.getString("date"));
                

                book.add(row);
            }

        } catch (SQLException e) {
            e.printStackTrace();
            System.out.println(e.getMessage());
        }
        return book;
    }
}