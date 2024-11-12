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
public class user_feedback extends HttpServlet {

    @Override
  protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        PrintWriter out=resp.getWriter();
        
        String fid = req.getParameter("fid");
        String feed_name=req.getParameter("feed_name");
        String feed_email=req.getParameter("feed_email");
        String feed_contact=req.getParameter("feed_contact");
        String feed_desc=req.getParameter("feed_desc");
        String Professional=req.getParameter("Professional");
        String event = req.getParameter("feedback");
        
        out.println(feed_name);
        out.println(feed_email);
        out.println(feed_contact);
        out.println(feed_desc);
        out.println(Professional);
        out.println(event);
       
        database db=new database();
        String result=db.connectDB();
        out.println(result);
        
        if (event.equals("submit")) {
            String insert = db.Query("insert into feedback_tbl(sname, email,contact,Discription,experience) values('" + feed_name + "','" + feed_email + "','" + feed_contact + "','" + feed_desc + "','" + Professional + "')", "Thanks for your feedback");
            out.println(insert);
            resp.setContentType("text/html");
            out.println("<script type=\"text/javascript\">");
            out.println("alert('"+insert+"');");
            out.println("location='index.html';");
            out.println("</script>");

        }
        if (event.equals("Delete")) {
            String delete = db.Query("delete from feedback_tbl where fid='" + fid + "'", "Record deleted");
            out.println(delete);
            resp.setContentType("text/html");
            out.println("<script type=\"text/javascript\">");
            out.println("alert('"+delete+"');");
            out.println("location='feedback_list.jsp';");
            out.println("</script>");
        }
        
        if (event.equals("Update")) {
            String update = db.Query("update feedback_tbl set sname='"+feed_name+"',email='"+feed_email+"',contact='"+feed_contact+"',Discription='"+feed_desc+"',experience='"+Professional+"'  where fid='" + fid + "'", "Record Updated");
            out.println(update);
            resp.setContentType("text/html");
            out.println("<script type=\"text/javascript\">");
            out.println("alert('"+update+"');");
            out.println("location='feedback_list.jsp';");
            out.println("</script>");
        }
    }
} 
