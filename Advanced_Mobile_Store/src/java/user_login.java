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
public class user_login extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        PrintWriter out = resp.getWriter();

        String user_email= req.getParameter("user_email");
        String user_password= req.getParameter("user_password");
        String event= req.getParameter("confirm");

        out.println(user_email);
        out.println(user_password);
        out.println(event);
        
        database db=new database();
        String result=db.connectDB();
        out.println(result);
        
        
        HttpSession session=req.getSession();
        
        
        if (event.equals("submit")) {
            Connection cn = null;
            Statement st = null;

            try {
                Class.forName("com.mysql.jdbc.Driver");
                cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mobile_store", "root", "root");
                st = cn.createStatement();
                String sql = "select * from user_signup_tbl where email='" + user_email + "' and spassword='" + user_password + "'";
                ResultSet rs = st.executeQuery(sql);
                if (rs.next()) {
                    session.setAttribute("email", user_email);
                    resp.sendRedirect("product_category_view.jsp");
                } else {
                    resp.setContentType("text/html");
                    out.println("<script type=\"text/javascript\">");
                    out.println("alert('Login fail');");
                    out.println("location='User_login.jsp';");
                    out.println("</script>");
                }
            } catch (Exception ex) {
            }

    }
}
}