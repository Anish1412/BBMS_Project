/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;

/**
 *
 * @author student
 */
@WebServlet(urlPatterns = {"/Login"})
public class Login extends HttpServlet {

	/**
 	* Processes requests for both HTTP <code>GET</code> and <code>POST</code>
 	* methods.
 	*
 	* @param request servlet request
 	* @param response servlet response
 	* @throws ServletException if a servlet-specific error occurs
 	* @throws IOException if an I/O error occurs
 	*/
	protected void processRequest(HttpServletRequest request, HttpServletResponse response)
        	throws ServletException, IOException {
    	response.setContentType("text/html");
    	PrintWriter out = response.getWriter();
    	try {
       	String Name = request.getParameter("UName");
        String Email = request.getParameter("Email");
        String Pass = request.getParameter("Pass");
      	 
       	Class.forName("org.apache.derby.jdbc.ClientDriver");
       	Connection c = DriverManager.getConnection("jdbc:derby://localhost:1527/Donor","app","app");
        PreparedStatement ps = c.prepareStatement("select Username from Donor where Username=? and Email=? and Password=?");
        
        ps.setString(1,Name);
        ps.setString(2,Email);
        ps.setString(3,Pass);
        ResultSet rs = ps.executeQuery();
        while(rs.next()){
//            out.println("Name : "+rs.getString("Username"));
        out.println("<html>\n<head>\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n<title>Login</title>\n<link rel=\"shortcut icon\" href=\"https://repository-images.githubusercontent.com/152029248/bdcac480-f326-11e9-8aa5-dafa9940739b\" type=\"image/png\">\n<style>\nbody{\nbackground-color: white;\n}\nimg{\nwidth:300px;\nheight:80px;\nmargin: 10px;\n}\n.container{\nbackground-color: maroon;\nwidth: 100%;\nheight: 100px;\nborder-bottom: 1px solid black;\nmargin-bottom: 30px;\n}\nul{\nfloat: right;\n}\nli{\ndisplay: inline;\nlist-style-type: none;\n}\nli > a{               \ncolor:yellow;\ntext-decoration: none;\npadding: 0px 20px 0px 20px;\nfont-size: 20px;\n}\nli > a:hover{\ntext-shadow: 2px 2px 2px black;\n}\nh1{\ntext-align: center;\nfont-size: 45px;\nfont-weight: bold;\ncolor:maroon;\nmargin: 222px -5px -5px -5px;\n}\n#link{               \ncolor:maroon;\ntext-decoration: none;\npadding: 0px 20px 0px 20px;\nfont-size: 25px;\n}\n</style>\n</head>\n<body>\n<div class=\"container\">\n<img src=\"https://images.projectsgeek.com/2015/11/Blood-Donation-Management-System.jpg\" alt=\"Image not available\">\n<ul>\n<li><a href=\"BloodBank2.jsp\">Blood Bank</a></li>\n<li><a href=\"Hospital2.jsp\">Hospital</a></li>\n<li><a href=\"SearchDonor2.jsp\">Search Donor</a></li>\n<li><a href=\"AboutUs2.jsp\">About us</a></li>\n<li style=\"margin-left:50px\"><a href=\"index.html\" style=\"font-size:25px\">Logout</a></li>\n<li></ul>            \n</div>\n<h1>YOU HAVE LOGGED IN SUCCESSFULLY!!</h1><br><br><p style=\"font-size:35px;color:maroon;font-weight:bold;text-indent:540px;margin:15px;\">Welcome, "+rs.getString("Username")+"!!</p><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n\n\n<a href=\"Edit.jsp\" id=\"link\">Edit</a> |\n<a href=\"Delete.jsp\" id=\"link\">Delete</a>");
        }
       	rs.close();
       	ps.close();
       	c.close();
       	}
    	catch(Exception ex){
        	out.println("Error = "+ex);
    	}
    	}
    

	// <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
	/**
 	* Handles the HTTP <code>GET</code> method.
 	*
 	* @param request servlet request
 	* @param response servlet response
 	* @throws ServletException if a servlet-specific error occurs
 	* @throws IOException if an I/O error occurs
 	*/
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
        	throws ServletException, IOException {
    	processRequest(request, response);
	}

	/**
 	* Handles the HTTP <code>POST</code> method.
 	*
 	* @param request servlet request
 	* @param response servlet response
 	* @throws ServletException if a servlet-specific error occurs
 	* @throws IOException if an I/O error occurs
 	*/
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
        	throws ServletException, IOException {
    	processRequest(request, response);
	}

	/**
 	* Returns a short description of the servlet.
 	*
 	* @return a String containing servlet description
 	*/
	@Override
	public String getServletInfo() {
    	return "Short description";
	}// </editor-fold>

}