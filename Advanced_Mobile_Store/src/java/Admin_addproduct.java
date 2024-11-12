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
public class Admin_addproduct extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        PrintWriter out = resp.getWriter();

        String pid = req.getParameter("pid");
        String Productimage = req.getParameter("Productimage");
        String ProductName = req.getParameter("ProductName");
        String ProductModelName = req.getParameter("ProductModelName");
        String ProductColour = req.getParameter("ProductColour");
        String Product_RAM = req.getParameter("Product_RAM");
        String ProductInbuiltStorage = req.getParameter("ProductInbuiltStorage");
        String ProductCamera = req.getParameter("ProductCamera");
        String Product_OS = req.getParameter("Product_OS");
        String ProductCellularTechnology = req.getParameter("ProductCellularTechnology");
        String ProductBattery = req.getParameter("ProductBattery");
        String ProductProcessor = req.getParameter("ProductProcessor");
        String ProductDisplayType = req.getParameter("ProductDisplayType");
        String ProductDisplaySize = req.getParameter("ProductDisplaySize");
        String ProductWeight = req.getParameter("ProductWeight");
        String ProductQuantity = req.getParameter("ProductQuantity");
        String ProductPrice = req.getParameter("ProductPrice");
        String ProductSpecification = req.getParameter("ProductSpecification");
        String event = req.getParameter("AddProductSubmit");

        out.println(Productimage);
        out.println(ProductName);
        out.println(ProductModelName);
        out.println(ProductColour);
        out.println(Product_RAM);
        out.println(ProductInbuiltStorage);
        out.println(ProductCamera);
        out.println(Product_OS);
        out.println(ProductCellularTechnology);
        out.println(ProductBattery);
        out.println(ProductProcessor);
        out.println(ProductDisplayType);
        out.println(ProductDisplaySize);
        out.println(ProductWeight);
        out.println(ProductQuantity);
        out.println(ProductPrice);
        out.println(ProductSpecification);
        out.println(event);

        database db = new database();
        String result = db.connectDB();
        out.println(result);

        if (event.equals("Submit")) {
            String insert = db.Query("insert into product_tbl(Product_image,Product_name,Model_name,colour,Ram,Inbuilt_storage,Camera,Operating_system,Cellular_technology,Battery,Processor,Display_type,Display_size,Weight,Quantity,Price,Specification) values('Image/" + Productimage + "','" + ProductName + "','" + ProductModelName + "','" + ProductColour + "','" + Product_RAM + "','" + ProductInbuiltStorage + "','" + ProductCamera + "','" + Product_OS + "','" + ProductCellularTechnology + "','" + ProductBattery + "','" + ProductProcessor + "','" + ProductDisplayType + "','" + ProductDisplaySize + "','" + ProductWeight + "','" + ProductQuantity + "','" + ProductPrice + "','" + ProductSpecification + "')", "Record Inserted");
            out.println(insert);
            resp.setContentType("text/html");
            out.println("<script type=\"text/javascript\">");
            out.println("alert('"+insert+"');");
            out.println("location='Admin_addProduct.jsp';");
            out.println("</script>");
        }
        if (event.equals("Delete")) {
            String delete = db.Query("delete from product_tbl where pid='" + pid + "'", "Record deleted");
            out.println(delete);
            resp.setContentType("text/html");
            out.println("<script type=\"text/javascript\">");
            out.println("alert('"+delete+"');");
            out.println("location='product_list.jsp';");
            out.println("</script>");
        }
        
        if (event.equals("Update")) {
            String update = db.Query("update product_tbl set Product_image='"+Productimage+"',Product_name='"+ProductName+"',Model_name='"+ProductModelName+"',colour='"+ProductColour+"',Ram='"+Product_RAM+"',Inbuilt_storage='"+ProductInbuiltStorage+"',Camera='"+ProductCamera+"',Operating_system='"+Product_OS+"',Cellular_technology='"+ProductCellularTechnology+"',Battery='"+ProductBattery+"',Processor='"+ProductProcessor+"',Display_type='"+ProductDisplayType+"',Display_size='"+ProductDisplaySize+"',Weight='"+ProductWeight+"',Quantity='"+ProductQuantity+"',Price='"+ProductPrice+"',Specification='"+ProductSpecification+"'  where pid='" + pid + "'", "Record Updated");
            out.println(update);
            resp.setContentType("text/html");
            out.println("<script type=\"text/javascript\">");                                                                                                                                                                                                            
            out.println("alert('"+update+"');");
            out.println("location='product_list.jsp';");
            out.println("</script>");
        }
    }
}
