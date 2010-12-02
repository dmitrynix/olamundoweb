package com.sistemas.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionFactory {
	public static Connection getConnection(){
		String url = "jdbc:postgresql://localhost:5432/agenda";
		String user = "agenda";
		String pass = "agenda";
		try {
			return DriverManager.getConnection(url,user,pass);
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
}
