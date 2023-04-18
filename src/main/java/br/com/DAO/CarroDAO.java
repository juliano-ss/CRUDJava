package br.com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import br.com.DTO.CarroDTO;

public class CarroDAO {

    private Connection conexao;

    public CarroDAO() {
        conexao = ConnectionDAO.getConnection();
    }

    public void adicionar(CarroDTO carro) {
        String sql = "INSERT INTO carros (modelo, placa) VALUES (?, ?)";

        try {
            PreparedStatement stmt = conexao.prepareStatement(sql);
            stmt.setString(1, carro.getModelo());
            stmt.setString(2, carro.getPlaca());
            stmt.executeUpdate();
            stmt.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public void alterar(CarroDTO carro) {
        String sql = "UPDATE carros SET modelo=?, placa=? WHERE id=?";

        try {
            PreparedStatement stmt = conexao.prepareStatement(sql);
            stmt.setString(1, carro.getModelo());
            stmt.setString(2, carro.getPlaca());
            stmt.setInt(3, carro.getId());
            stmt.executeUpdate();
            stmt.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public void excluir(int id) {
        String sql = "DELETE FROM carros WHERE id=?";

        try {
            PreparedStatement stmt = conexao.prepareStatement(sql);
            stmt.setInt(1, id);
            stmt.executeUpdate();
            stmt.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public List<CarroDTO> listar() {
        String sql = "SELECT * FROM carros";
        List<CarroDTO> carros = new ArrayList<CarroDTO>();

        try {
            PreparedStatement stmt = conexao.prepareStatement(sql);
            ResultSet rs = stmt.executeQuery();

            while (rs.next()) {
                CarroDTO carro = new CarroDTO();
                carro.setId(rs.getInt("id"));
                carro.setModelo(rs.getString("modelo"));
                carro.setPlaca(rs.getString("placa"));
                carros.add(carro);
            }

            rs.close();
            stmt.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

        return carros;
    }
}
