package com.simplilearn.admin;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DatabaseConnector {
    public static void main(String[] args) {
        // JDBC URL, username, and password
        String url = "jdbc:mysql://localhost:3306/administrative-portal";
        String username = "root";
        String password = "root";
        
        // Load the MySQL JDBC driver
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            System.out.println("MySQL JDBC Driver not found!");
            e.printStackTrace();
            return;
        }
        
        // Connect to the database
        try (Connection connection = DriverManager.getConnection(url, username, password)) {
            System.out.println("Connected to the database!");
            // Execute SQL queries and process results here
        } catch (SQLException e) {
            System.out.println("Connection failed!");
            e.printStackTrace();
        }
    }
}
