package dataAccessObject;
import java.util.List;
import crud.Cliente;

public interface Crud {
	
	public static void create(Cliente cliente) {	
	}
	
	public static void delete(int codigoCliente) {		
	}
	
	public static List<Cliente> find(String pesquisa) {
		return null;
	}
	
	public static Cliente findByPK(int codigoCliente) {
		return null;
	}
	
	public static void update(Cliente cliente) {		
	}
	
}
