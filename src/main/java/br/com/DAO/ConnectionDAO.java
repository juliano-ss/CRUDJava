
package br.com.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author jotal
 */
public class ConnectionDAO {

    public Connection connectionBD() throws ClassNotFoundException {
        Connection con = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            String url = "jdbc:mysql://localhost:3306/tabela_carros?user=root&password=";
            con = DriverManager.getConnection(url);
        } catch (SQLException e) {
            System.out.println("Erro na conexão ao banco de dados: " + e);
        }
        return con;
    }

    public static Connection getConnection() {
        return null;
    }

}
