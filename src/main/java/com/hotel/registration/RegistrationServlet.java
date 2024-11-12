package com.hotel.registration;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 * Servlet implementation class RegistrationServlet
 */
@WebServlet("/register")
public class RegistrationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String typeofroom = request.getParameter("typeofroom");
		String noofpeople = request.getParameter("noofpeople");
		String mobile = request.getParameter("mobile");
		String address = request.getParameter("address");
		
		RequestDispatcher dispatcher = null;
		Connection con = null;
		try {
			//System.out.println("I am here");
			Class.forName("com.mysql.cj.jdbc.Driver");
			//System.out.println(con);
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hotelbooking?useSSL=false&allowPublicKeyRetrieval=true","root","V1shal@24");
			PreparedStatement pst= con.prepareStatement("insert into booking(name, email, typeofroom, noofpeople, mobile, address) values (?,?,?,?,?,?)");
			
			pst.setString(1, name);
			pst.setString(2, email);
			pst.setString(3, typeofroom);
			pst.setString(4, noofpeople);
			pst.setString(5, mobile);
			pst.setString(6, address);
			
			int rowCount = pst.executeUpdate();
			dispatcher = request.getRequestDispatcher("registration.jsp");
			if (rowCount > 0) {
				request.setAttribute("status", "success");
			} else {
				request.setAttribute("status",  "failure");
			}
			dispatcher.forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		
	}

}
