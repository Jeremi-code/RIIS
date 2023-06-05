package com.riis.database;

import java.io.File;
import java.sql.Connection;
import java.sql.DatabaseMetaData;
import java.sql.DriverManager;
import java.sql.SQLException;


public class DatabaseConnection {
    private static Connection connection;
    private static Object syncObject = new Object();

    private DatabaseConnection() {

    }

    public static Connection createConnection() throws ClassNotFoundException, SQLException {
        String URL = "jdbc:sqlite:src\\db\\riis.db";
        return DriverManager.getConnection(URL);

    }

    public static Connection getInstance() throws ClassNotFoundException, SQLException {
        synchronized (syncObject) {
            if (connection == null) {
                connection = createConnection();
            }
            return connection;
        }
    }

    public static boolean checkDatabase(String databaseUrl) throws ClassNotFoundException, SQLException {
        File databaseFile = new File(databaseUrl);

        if (!databaseFile.exists()) {
            System.err.println("Database file not found");
            return false;
        } else {
            Connection connection = DriverManager.getConnection("jdbc:sqlite:" + databaseUrl);
            DatabaseMetaData metaData = connection.getMetaData();
            try {
                metaData.getTables(null, null, "%", null);
                return true;
            } catch (SQLException e) {
                System.err.println("Database is not connected");
                return false;
            }
        }  
    }
}
