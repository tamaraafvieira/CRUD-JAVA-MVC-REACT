package dataAccessObject;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import crud.Cliente;
import db.MySqlConnection;

public class ClienteDao implements Crud {
	
	private static Connection connection = MySqlConnection.createConnection();
	private static String sql;
	
	public static void create(Cliente cliente) {
		sql = "INSERT INTO clientes VALUES (null, ?, ?, ?, ?, ?, ?, ?, ?)";
		
		try {
			PreparedStatement preparedStatement = connection.prepareStatement(sql);
			
			preparedStatement.setString(1, cliente.getNome());
			preparedStatement.setString(2, cliente.getCpf());
			preparedStatement.setString(3, cliente.getEmail());
			preparedStatement.setString(4, cliente.getRua());
			preparedStatement.setString(5, cliente.getNumero());
			preparedStatement.setString(6, cliente.getComplemento());
			preparedStatement.setString(7, cliente.getCep());
			preparedStatement.setString(8, cliente.getSituacao());
			
			preparedStatement.executeUpdate();
			
			System.out.println("--correct insert on database--");
			
		} catch(SQLException e) {
			System.out.println("--incorrect insert on database--" + e.getMessage());
		}
	}
	
	public static void delete(int codigoCliente) {	
		sql = "DELETE FROM clientes WHERE codigoCliente = ?";
		
		try {
			PreparedStatement preparedStatement = connection.prepareStatement(sql);
			
			preparedStatement.setInt(1, codigoCliente);
			preparedStatement.executeUpdate();
			
			System.out.println("--correct delete on cliente--");
			
		} catch (SQLException e) {
			System.out.println("--incorrect delete on cliente--" + e.getMessage());
		}
		
	}
	
	public static List<Cliente> find(String busca) {
		
		sql = String.format("SELECT * FROM clientes WHERE nome like '%s%%' OR cpf LIKE '%s%%' ", busca, busca);
		List<Cliente> clientes = new ArrayList<Cliente>();
		
		try {
			Statement statement = connection.createStatement();
			ResultSet resultSet = statement.executeQuery(sql);
			
			while(resultSet.next()) {
				Cliente cliente = new Cliente();				
				cliente.setCodigoCliente(resultSet.getInt("codigoCliente"));
				cliente.setNome(resultSet.getString("nome"));
				cliente.setCpf(resultSet.getString("cpf"));
				cliente.setEmail(resultSet.getString("email"));
				cliente.setRua(resultSet.getString("rua"));
				cliente.setNumero(resultSet.getString("numero"));
				cliente.setComplemento(resultSet.getString("complemento"));		
				cliente.setCep(resultSet.getString("cep"));
				cliente.setSituacao(resultSet.getString("situacao"));
				
				clientes.add(cliente);				
			}
			
			System.out.println("--correct find clientes--");
			return clientes;
			
		} catch(SQLException e) {
			System.out.println("--incorrect find clientes--" + e.getMessage());
			return null;			
		}
		
	}
	
	public static Cliente findByPK(int codigoCliente) {
		
		sql = String.format("SELECT * FROM clientes WHERE codigoCliente = %d", codigoCliente);
				
		try {
			Statement statement = connection.createStatement();
			ResultSet resultSet = statement.executeQuery(sql);
			Cliente cliente = new Cliente();
			
			while(resultSet.next()) {				
								
				cliente.setCodigoCliente(resultSet.getInt("codigoCliente"));
				cliente.setNome(resultSet.getString("nome"));
				cliente.setCpf(resultSet.getString("cpf"));
				cliente.setEmail(resultSet.getString("email"));
				cliente.setRua(resultSet.getString("rua"));
				cliente.setNumero(resultSet.getString("numero"));
				cliente.setComplemento(resultSet.getString("complemento"));		
				cliente.setCep(resultSet.getString("cep"));
				cliente.setSituacao(resultSet.getString("situacao"));				
						
			}
			
			System.out.println("--correct findByPK cliente--");
			return cliente;
			
		} catch(SQLException e) {
			System.out.println("--incorrect findByPK cliente--" + e.getMessage());
			return null;			
		}
		
	}
	
	public static void update(Cliente cliente) {
		
		sql = "UPDATE clientes SET nome=?, cpf=?, email=?, rua=?, numero=?, complemento=?, cep=?, situacao=? WHERE codigoCliente=?";
		
		try {
			PreparedStatement preparedStatement = connection.prepareStatement(sql);
			
			preparedStatement.setString(1, cliente.getNome());
			preparedStatement.setString(2, cliente.getCpf());
			preparedStatement.setString(3, cliente.getEmail());
			preparedStatement.setString(4, cliente.getRua());
			preparedStatement.setString(5, cliente.getNumero());
			preparedStatement.setString(6, cliente.getComplemento());
			preparedStatement.setString(7, cliente.getCep());
			preparedStatement.setString(8, cliente.getSituacao());
			preparedStatement.setInt(9, cliente.getCodigoCliente());
			
			preparedStatement.executeUpdate();
			
			System.out.println("--correct update on database--");
			
		} catch(SQLException e) {
			System.out.println("--incorrect update on database--" + e.getMessage());
		}
		
	}	
}
