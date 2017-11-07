package md.amsoft.onboard.util;

import java.sql.*;

public class ConnectionManager {

    private static Connection connection;

    private ConnectionManager() {
    }

    public static Connection conn() {
        if (connection == null) {
            try {
                Class.forName("org.postgresql.Driver");
                connection = DriverManager.getConnection("jdbc:postgresql://localhost:5432/on_board", "postgres", "postgres");
            } catch (Exception ex) {
                throw new RuntimeException(ex);
            }
        }

        return connection;
    }

    public static void closs(Statement statement, ResultSet resultSet) {
        try {
            if (statement != null)
                statement.close();

            if (resultSet != null)
                resultSet.close();
        } catch (SQLException e) {
            throw new RuntimeException();
        }
    }
}
