/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author sai
 */
@WebServlet(urlPatterns = {"/BloodBank"})
public class BloodBank extends HttpServlet {

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
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try{
           String Bloodgroup = request.getParameter("Email");
           out.println("<html>\n<head>\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n<title>BloodBanks</title>\n<link rel=\"shortcut icon\" href=\"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRZo_bH40T6rSelnM5H3wyS-UC1kJajBERvAFaNKcVp89fbKgDlflM5dfTEyQ-f_JDXHvA&usqp=CAU\" type=\"image/png\">\n<style>\nbody{\nbackground-color: white;\n}\nimg{\nwidth:300px;\nheight:80px;\nmargin: 10px;\n}\n.container{\nbackground-color: maroon;\nwidth: 100%;\nheight: 100px;\nborder-bottom: 1px solid black;\nmargin-bottom: 30px;\n}\nul{\nfloat: right;\n}\nli{\ndisplay: inline;\nlist-style-type: none;\n}\na{               \ncolor:yellow;\ntext-decoration: none;\npadding: 0px 20px 0px 20px;\nfont-size: 20px;\n}\na:hover{\ntext-shadow: 2px 2px 2px black;\n}\nh1{\ntext-align: center;\nfont-size: 45px;\nfont-weight: bold;\ncolor:maroon;\nmargin-top: 80px;\n}\n#link{               \ncolor:yellow;\ntext-decoration: none;\npadding: 0px 20px 0px 20px;\nfont-size: 25px;\n}\n#link:hover{\ntext-shadow: 2px 2px 2px black;\n}\n</style>\n</head>\n<body>\n<div class=\"container\">\n<img src=\"https://images.projectsgeek.com/2015/11/Blood-Donation-Management-System.jpg\" alt=\"Image not available\">\n<ul>\n<li><a href=\"index.html\">Home</a></li>\n<li><a href=\"Bloodbank.jsp\">Blood Bank</a></li>\n<li><a href=\"Hospital.jsp\">Hospital</a></li>\n<li><a href=\"SearchDonor.jsp\">Search Donor</a></li>\n<li><a href=\"AboutUs.jsp\">About us</a></li>\n\n</ul>            \n</div>\n<h1>BLOOD BANKS</h1><br>");
           
        Class.forName("org.apache.derby.jdbc.ClientDriver");
       	Connection c = DriverManager.getConnection("jdbc:derby://localhost:1527/BloodBank","app","app");
        PreparedStatement ps = c.prepareStatement("select * from BloodBank where Bloodgroup=?");
        
        ps.setString(1,Bloodgroup);
        ResultSet rs = ps.executeQuery();
        while(rs.next()){
        out.println("<p style=\"font-size:35px;color:maroon;font-weight:bold;text-indent:200px;\">BloodBank Name : "+rs.getString("BloodBankName")+"</p><p style=\"font-size:35px;color:maroon;font-weight:bold;text-indent:200px;\">BloodGroup : "+rs.getString("Bloodgroup")+"</p><p style=\"font-size:35px;color:maroon;font-weight:bold;text-indent:200px;\">Location : "+rs.getString("Location")+"</p><p style=\"font-size:35px;color:maroon;font-weight:bold;text-indent:200px;\">Email : "+rs.getString("Email")+"</p><hr>");
        }
       	rs.close();
       	ps.close();
       	c.close();
        }
        catch(Exception ex){
        out.println("Error = "+ex);
        }
        out.println("</body>");
        out.println("</html>");
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