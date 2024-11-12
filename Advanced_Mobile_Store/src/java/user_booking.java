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
import javax.servlet.http.HttpSession;

/**
 *
 * @author rohit
 */
public class user_booking extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        PrintWriter out = resp.getWriter();
        HttpSession session = req.getSession();
        String Bid = req.getParameter("Bid");
        String txt_name = req.getParameter("txt_name");
        String txt_address = req.getParameter("txt_address");
        String txt_contact = req.getParameter("txt_contact");
        String txt_email = req.getParameter("txt_email");
        String txt_modelnum = req.getParameter("txt_modelnum");
        String txt_brand = req.getParameter("txt_brand");
        String txt_date = req.getParameter("txt_date");
        String txt_price = req.getParameter("txt_price");
        String event = req.getParameter("txt_submit");

        out.println(txt_name);
        out.println(txt_address);
        out.println(txt_contact);
        out.println(txt_email);
        out.println(txt_modelnum);
        out.println(txt_brand);
        out.println(txt_date);
        out.println(txt_price);
        out.println(event);

        database db = new database();
        String result = db.connectDB();
        out.println(result);

        if (event.equals("confirm")) {
            String insert = db.Query("insert into booking_tbl(User_name, user_address, contact, email, Model_no, Brand, Date, Price) values('" + txt_name + "','" + txt_address + "','" + txt_contact + "','" + txt_email + "','" + txt_modelnum + "','" + txt_brand + "','" + txt_date + "','" + txt_price + "')", "Make payment to confirm your order");
            out.println(insert);
            session.setAttribute("bname", txt_brand);
            session.setAttribute("date", txt_date);
            session.setAttribute("price", txt_price);
            session.setAttribute("address", txt_address);
            resp.setContentType("text/html");
            out.println("<script type=\"text/javascript\">");
            out.println("alert('" + insert + "');");
            out.println("location='user_payment.jsp';");
            out.println("</script>");
        }

        if (event.equals("Delete")) {
            String delete = db.Query("delete from booking_tbl where Bid='" + Bid + "'", "Record deleted");
            out.println(delete);
            resp.setContentType("text/html");
            out.println("<script type=\"text/javascript\">");
            out.println("alert('" + delete + "');");
            out.println("location='bookinglist.jsp';");
            out.println("</script>");
        }

        if (event.equals("Update")) {
            String update = db.Query("update booking_tbl set User_name='" + txt_name + "',user_address='" + txt_address + "',contact='" + txt_contact + "',email='" + txt_email + "',Model_no='" + txt_modelnum + "',Brand='" + txt_brand + "',Date='" + txt_date + "',Price='" + txt_price + "'  where Bid='" + Bid + "'", "Record Updated");
            out.println(update);
            resp.setContentType("text/html");
            out.println("<script type=\"text/javascript\">");
            out.println("alert('" + update + "');");
            out.println("location='bookinglist.jsp';");
            out.println("</script>");
        }
    }
}
