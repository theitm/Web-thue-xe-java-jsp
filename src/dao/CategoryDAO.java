package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import connect.DBConnect;
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
	
	public static void main(String[] args) throws SQLException {
		CategoryDAO dao = new CategoryDAO();
		for(Category ds:dao.getListCategory()) {
			System.out.println(ds.getCategoryID()+" - " +ds.getCategoryName());
		}
//		System.out.println("Hello");
	}
}
