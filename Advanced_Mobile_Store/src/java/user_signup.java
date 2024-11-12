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
public class user_signup extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        PrintWriter out = resp.getWriter();

        String Usid = req.getParameter("Usid");
        String userName = req.getParameter("userName");
        String userAddress = req.getParameter("userAddress");
        String userContact = req.getParameter("userContact");
        String userEmail = req.getParameter("userEmail");
        String userPassword = req.getParameter("userPassword");
        String userConfirmpassword = req.getParameter("userConfirmpassword");
        String event = req.getParameter("userSignupSubmit");

        out.println(userName);
        out.println(userAddress);
        out.println(userContact);
        out.println(userEmail);
        out.println(userPassword);
        out.println(userConfirmpassword);
        out.println(event);

        database db = new database();
        String result = db.connectDB();
        out.println(result);

        if (event.equals("Sign_Up")) {
            String insert = db.Query("insert into user_signup_tbl(sname, address, contact, email, spassword,confirm_password) values('" + userName + "','" + userAddress + "','" + userContact + "','" + userEmail + "','"+userPassword+"','" + userConfirmpassword + "')", "Record Inserted");
            out.println(insert);
            resp.setContentType("text/html");
            out.println("<script type=\"text/javascript\">");
            out.println("alert('"+insert+"');");
            out.println("location='User_login.jsp';");
            out.println("</script>");
        }
        if (event.equals("Delete")) {
            String delete = db.Query("delete from user_signup_tbl where Usid='" + Usid + "'", "Record deleted");
            out.println(delete);
            resp.setContentType("text/html");
            out.println("<script type=\"text/javascript\">");
            out.println("alert('"+delete+"');");
            out.println("location='user_signuplist.jsp';");
            out.println("</script>");
        }
        
        if (event.equals("Update")) {
            String update = db.Query("update user_signup_tbl set sname='"+userName+"',address='"+userAddress+"',contact='"+userContact+"',email='"+userEmail+"',spassword='"+userPassword+"',confirm_password='"+userConfirmpassword+"'  where Usid='" + Usid + "'", "Record Updated");
            out.println(update);
            resp.setContentType("text/html");
            out.println("<script type=\"text/javascript\">");
            out.println("alert('"+update+"');");
            out.println("location='user_signuplist.jsp';");
            out.println("</script>");
        }
    }
}
