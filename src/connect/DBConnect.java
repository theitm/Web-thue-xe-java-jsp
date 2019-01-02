package connect;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnect {

    public static Connection getConnection() {
        Connection cons = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            cons = DriverManager.getConnection("jdbc:mysql://localhost:8889/thuexe", "root", "root");
        } catch (Exception e) {
            e.printStackTrace();
        }
        return cons;
    }

    public static void main(String[] args) {
        System.out.println(getConnection());
    }
    
}