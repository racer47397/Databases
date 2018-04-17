

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class RegistroLogic
 */
@WebServlet("/RegistroLogic")
public class RegistroLogic extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegistroLogic() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "jdbc:mysql://localhost/jacksonalarmas";
		boolean isRegistered;
        Connection con;
		try {
			String uname=request.getParameter("user");
    		String password=request.getParameter("psw");
    		String direccion=request.getParameter("calle");
    		String tel=request.getParameter("num_tel");
    		Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection(url,"root", "root");
			Statement stat = con.createStatement();
	        ResultSet res = stat.executeQuery("SELECT * FROM cliente WHERE Usuario='"+uname+"'");
	        if(res.next()) {
    			isRegistered = true;
    		}else {
    			isRegistered=false;
    		}
	        
	        if(!isRegistered) {
	        	int upd = stat.executeUpdate("insert into cliente (Usuario,Contraseña,Telefono,Direccion) values ('"+uname+"','"+password+"','"+tel+"','"+direccion+"')");
	        }
	        
	        if(!isRegistered) {
    			response.sendRedirect("index.html");
    		} else {
    			response.sendRedirect("registro.html");
    		}
	           
	           
	            stat.close();
	            con.close();
	    		
	    		
		} catch (SQLException e) {
			e.printStackTrace();
		} catch(ClassNotFoundException ex) {
			ex.printStackTrace();
		}
       
	}

}
