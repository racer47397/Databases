

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class LoginLogic
 */
@WebServlet("/LoginLogic")
public class LoginLogic extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginLogic() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "jdbc:mysql://localhost/jacksonalarmas";
        Connection con;
		try {
			String uname=request.getParameter("user");
    		String password=request.getParameter("psw");
    		Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection(url,"root", "root");
			Statement stat = con.createStatement();
	        ResultSet res = stat.executeQuery("SELECT * FROM cliente WHERE Usuario='"+uname+"' and Contraseña='"+password+"'");
	        if(res.next()) {
	        	request.setAttribute("usuario",uname);
	        	RequestDispatcher disp =  getServletContext().getRequestDispatcher("/index.jsp");
	        	if(disp!=null){
					disp.forward(request,response);
				}else {
	        	response.sendRedirect("index.jsp");
				}
    		}else {
    			response.sendRedirect("index.html");
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
