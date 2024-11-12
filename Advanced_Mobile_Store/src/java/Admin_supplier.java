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
public class Admin_supplier extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        PrintWriter out = resp.getWriter();

        String suid = req.getParameter("suid");
        String SupplierName = req.getParameter("SupplierName");
        String SupplierContact = req.getParameter("SupplierContact");
        String SupplierEmail = req.getParameter("SupplierEmail");
        String productdetails = req.getParameter("productdetails");
        String SupplierProductPrice = req.getParameter("SupplierProductPrice");
        String SupplierBrandName = req.getParameter("SupplierBrandName");
        String SupplierTotalOrder = req.getParameter("SupplierTotalOrder");
        String SupplierTotalAmount = req.getParameter("SupplierTotalAmount");
        String SupplierAddress = req.getParameter("SupplierAddress");
        String event = req.getParameter("SupplierSignupSubmit");

        out.println(SupplierName);
        out.println(SupplierContact);
        out.println(SupplierEmail);
        out.println(productdetails);
        out.println(SupplierProductPrice);
        out.println(SupplierBrandName);
        out.println(SupplierTotalOrder);
        out.println(SupplierTotalAmount);
        out.println(SupplierAddress);
        out.println(event);

        database db = new database();
        String result = db.connectDB();
        out.println(result);

        if (event.equals("Submit")) {
            String insert = db.Query("insert into admin_supplier_tbl(sname,contact, email,Product_details,Product_price,Product_Brand, Total_order,Total_amount,address) values('" + SupplierName + "','" + SupplierContact + "','" + SupplierEmail + "','" + productdetails + "','" + SupplierProductPrice + "','" + SupplierBrandName + "','" + SupplierTotalOrder + "','" + SupplierTotalAmount + "','" + SupplierAddress + "')", "Record Inserted");
            out.println(insert);
            resp.setContentType("text/html");
            out.println("<script type=\"text/javascript\">");
            out.println("alert('"+insert+"');");
            out.println("location='Admin_supplier.jsp';");
            out.println("</script>");
        }
        
        if (event.equals("Delete")) {
            String delete = db.Query("delete from admin_supplier_tbl where suid='" + suid + "'", "Record deleted");
            out.println(delete);
            resp.setContentType("text/html");
            out.println("<script type=\"text/javascript\">");
            out.println("alert('"+delete+"');");
            out.println("location='supplier_list.jsp';");
            out.println("</script>");
        }
        
         if (event.equals("Update")) {
            String update = db.Query("update admin_supplier_tbl set sname='"+SupplierName+"',contact='"+SupplierContact+"',email='"+SupplierEmail+"',Product_details='"+productdetails+"',Product_price='"+SupplierProductPrice+"',Product_Brand='"+SupplierBrandName+"',Total_order='"+SupplierTotalOrder+"',Total_amount='"+SupplierTotalAmount+"',address='"+SupplierAddress+"'  where suid='" + suid + "'", "Record Updated");
            out.println(update);
            resp.setContentType("text/html");
            out.println("<script type=\"text/javascript\">");                                                                                                                                                                                                            
            out.println("alert('"+update+"');");
            out.println("location='supplier_list.jsp';");
            out.println("</script>");
        }
    }
}
