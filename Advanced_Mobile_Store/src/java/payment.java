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
public class payment extends HttpServlet {

   @Override
protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    PrintWriter out = resp.getWriter();
    String paymentMethod = req.getParameter("paymentMethod");
    String card_name = req.getParameter("card_name");
    String Exp_date = req.getParameter("Exp_date");
    String dcard_cvv = req.getParameter("dcard_cvv");
    String card_amount = req.getParameter("card_amount");      
    String upi_id = req.getParameter("upi_id");
    String ucard_amount = req.getParameter("ucard_amount");
    String bank_list = req.getParameter("bank_list");
    String cust_code = req.getParameter("cust_code");
    String cust_pasword = req.getParameter("cust_pasword");
    String ncard_amount = req.getParameter("ncard_amount");
    String event = req.getParameter("debit_confirm");

    out.println(paymentMethod);
    out.println(card_name);
    out.println(Exp_date);
    out.println(dcard_cvv);
    out.println(card_amount);
    out.println(upi_id);
    out.println(ucard_amount);
    out.println(bank_list);
    out.println(cust_code);
    out.println(cust_pasword);
    out.println(ncard_amount);
    out.println(event);

    database db = new database();
    String result = db.connectDB();
    out.println(result);

    if (event != null && event.equals("confirm")) {
        String insert = "";
        if (paymentMethod.equals("Debit Card/Credit Card")) {
            insert = db.Query("insert into debit_payment_tbl(cardholder_name, exp_date, cvv, amount) values('" + card_name + "','" + Exp_date + "','" + dcard_cvv + "','" + card_amount + "')", "Record Inserted");
        } else if (paymentMethod.equals("UPI(Google pay/Phone pay)")) {
            insert = db.Query("insert into upi_tbl(upi_id, amount) values('" + upi_id + "','" + ucard_amount + "')", "Payment Succesfull");
        } else if (paymentMethod.equals("Net Banking")) {
            insert = db.Query("insert into netbank_tbl(Bank, customer_code, spassword, amount) values('" + bank_list + "','" + cust_code + "','" + cust_pasword + "','" + ncard_amount + "')", "Record Inserted");
        }
        out.println(insert);

        // Set the content type of the response
        resp.setContentType("text/html");

        // Print a JavaScript alert with the result of the database operation
        out.println("<script type=\"text/javascript\">");
        out.println("alert('" + insert + "');");
        out.println("location='order.jsp';");
        out.println("</script>");
    }
}
}