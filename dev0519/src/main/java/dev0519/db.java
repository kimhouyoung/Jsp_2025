package dev0519;

import java.sql.Connection;
import java.sql.DriverManager;

public class db {

	static Connection conn;
	static String url = "jdbc:oracle:thin:@localhost:1521:xe";
	static String id = "system";
	static String pass = "1234";
	
	public static Connection getConnection() {
		try {
			Class.forName("oracle.jdbc.OracleDriver");
			conn = DriverManager.getConnection(url, id, pass);
		} catch (Exception e) {
			// TODO: handle exception
		}
		return conn;
	}
}
