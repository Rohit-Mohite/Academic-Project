/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author rohit
 */
public class admin_signup extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        PrintWriter out = resp.getWriter();

        String userName = req.getParameter("userName");
        String userAddress = req.getParameter("userAddress");
        String userContact = req.getParameter("userContact");
        String userEmail = req.getParameter("userEmail");
        String adminsignuppassword = req.getParameter("adminsignuppassword");
        String event = req.getParameter("register");

        out.println(userName);
        out.println(userAddress);
        out.println(userContact);
        out.println(userEmail);
        out.println(adminsignuppassword);
        out.println(event);

        database db = new database();
        String result = db.connectDB();
        out.println(result);

        if (event.equals("Register")) {
            String insert = db.Query("insert into admin_signup_tbl(sname, address, contact, email, spassword) values('" + userName + "','" + userAddress + "','" + userContact + "','" + userEmail + "','" + adminsignuppassword + "')", "Record Inserted");
            out.println(insert);
            resp.setContentType("text/html");
            out.println("<script type=\"text/javascript\">");
            out.println("alert('"+insert+"');");
            out.println("location='Admin_signup.jsp';");
            out.println("</script>");

        }

    }
}
