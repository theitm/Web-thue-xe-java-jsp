package dao;

import connect.DBConnect;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Category;

public class CategoryDAO {
	public ArrayList<Category> getListCategory() {
		Connection cons = DBConnect.getConnection();
		String sql = "SELECT * FROM category";
		ArrayList<Category> list = new ArrayList<>();
		try {
			PreparedStatement ps = (PreparedStatement) cons.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				Category category = new Category();
				category.setCategoryID(rs.getInt("category_id"));
				category.setCategoryName(rs.getString("category_name"));
				list.add(category);
			}
			cons.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}

	//them
	public boolean insertCategory(Category c) {
		Connection connection = DBConnect.getConnection();
		String sql = "INSERT INTO category VALUES(?,?)";
		try {
			PreparedStatement ps = connection.prepareCall(sql);
			ps.setLong(1, c.getCategoryID());
			ps.setString(2, c.getCategoryName());
			return ps.executeUpdate() == 1;
		} catch (SQLException ex) {
			Logger.getLogger(CategoryDAO.class.getName()).log(Level.SEVERE, null, ex);
		}
		return false;
	}

	//cap nhat
	public boolean updateCategory(Category c) {
		Connection connection = DBConnect.getConnection();
		String sql = "UPDATE category SET category_name = ? WHERE category_id = ?";
		try {
			PreparedStatement ps = connection.prepareCall(sql);
			ps.setString(1, c.getCategoryName());
			ps.setLong(2, c.getCategoryID());
			return ps.executeUpdate() == 1;
		} catch (SQLException ex) {
			Logger.getLogger(CategoryDAO.class.getName()).log(Level.SEVERE, null, ex);
		}
		return false;
	}
	//xoa
	public boolean deleteCategory(long category_id) {
		Connection connection = DBConnect.getConnection();
		String sql = "DELETE FROM category WHERE category_id = ?";
		try {
			PreparedStatement ps = connection.prepareCall(sql);
			ps.setLong(1, category_id);
			return ps.executeUpdate() == 1;
		} catch (SQLException ex) {
			Logger.getLogger(CategoryDAO.class.getName()).log(Level.SEVERE, null, ex);
		}
		return false;
	}
	public static void main(String[] args) throws SQLException {
		CategoryDAO dao = new CategoryDAO();
		for(Category ds:dao.getListCategory()) {
			System.out.println(ds.getCategoryID()+" - " +ds.getCategoryName());
		}
		//		System.out.println("Hello");
	}
}
