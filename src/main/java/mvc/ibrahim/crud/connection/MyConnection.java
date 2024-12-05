package mvc.ibrahim.crud.connection;

import java.sql.Connection;
import java.sql.DriverManager;

public class MyConnection {

	public static Connection conn;

	public static Connection getConnection() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/springmvccrud", "root", "root");

		} catch (Exception e) {
			e.printStackTrace();
		}
		return conn;
	}

}
