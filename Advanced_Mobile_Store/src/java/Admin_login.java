/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author rohit
 */
public class Admin_login extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        PrintWriter out = resp.getWriter();

        String adminlogin = req.getParameter("adminlogin");
        String adminpassword = req.getParameter("adminpassword");
        String event = req.getParameter("register");

        out.println(adminlogin);
        out.println(adminpassword);
        out.println(event);

        database db = new database();
        String result = db.connectDB();
        out.println(result);
        
        HttpSession session=req.getSession();

        if (event.equals("Register")) {
            Connection cn = null;
            Statement st = null;

            try {
                Class.forName("com.mysql.jdbc.Driver");
                cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mobile_store", "root", "root");
                st = cn.createStatement();
                String sql = "select * from admin_signup_tbl where email='" + adminlogin + "' and spassword='" + adminpassword + "'";
                ResultSet rs = st.executeQuery(sql);
                if (rs.next()) {
                    session.setAttribute("email", adminlogin);
                    resp.sendRedirect("Admin_supplier.jsp");
                } else {
                    resp.setContentType("text/html");
                    out.println("<script type=\"text/javascript\">");
                    out.println("alert('Login fail');");
                    out.println("location='Admin_login.jsp';");
                    out.println("</script>");
                }
            } catch (Exception ex) {
            }
        }
    }
}
