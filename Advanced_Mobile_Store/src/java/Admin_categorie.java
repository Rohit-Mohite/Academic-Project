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
public class Admin_categorie extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        PrintWriter out = resp.getWriter();
        String cid = req.getParameter("cid");
        String cat_image = req.getParameter("cat_image");
        String Cat_ProductName = req.getParameter("Cat_ProductName");
        String Cat_ProductDescription = req.getParameter("Cat_ProductDescription");
        String Cat_ProductAmount = req.getParameter("Cat_ProductAmount");
        String event = req.getParameter("AddProductSubmit");

        out.println(cat_image);
        out.println(Cat_ProductName);
        out.println(Cat_ProductDescription);
        out.println(Cat_ProductAmount);
        out.println(event);

        database db = new database();
        String result = db.connectDB();
        out.println(result);

        if (event.equals("Submit")) {
            String insert = db.Query("insert into category_tbl(Product_image, Product_name, Discription, Amount) values('Image/" + cat_image + "','" + Cat_ProductName + "','" + Cat_ProductDescription + "','" + Cat_ProductAmount + "')", "Product added succesfully");
            out.println(insert);
            resp.setContentType("text/html");
            out.println("<script type=\"text/javascript\">");
            out.println("alert('"+insert+"');");
            out.println("location='Admin_categorie.jsp';");
            out.println("</script>");
        }

        if (event.equals("Delete")) {
            String delete = db.Query("delete from category_tbl where Cid='" + cid + "'", "Record deleted");
            out.println(delete);
            resp.setContentType("text/html");
            out.println("<script type=\"text/javascript\">");
            out.println("alert('"+delete+"');");
            out.println("location='category_list.jsp';");
            out.println("</script>");
        }
        
         if (event.equals("Update")) {
            String update = db.Query("update category_tbl set Product_name='"+Cat_ProductName+"',Discription='"+Cat_ProductDescription+"',Amount='"+Cat_ProductAmount+"'  where Cid='" + cid + "'", "Record Updated");
            out.println(update);
            resp.setContentType("text/html");
            out.println("<script type=\"text/javascript\">");
            out.println("alert('"+update+"');");
            out.println("location='category_list.jsp';");
            out.println("</script>");
        }
    }
}
