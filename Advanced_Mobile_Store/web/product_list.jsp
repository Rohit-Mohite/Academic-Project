<%-- 
    Document   : product_list
    Created on : 3 Feb, 2024, 1:56:27 PM
    Author     : rohit
--%>


<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Product list</title>
        <%@include file="Admin_header.jsp" %>
    </head>
    <body>
        <br>
        <div class="container">
            <h2 style="text-align: center;">Product List</h2>
            <br>
            <table class="table table-striped">
                <thead>
                    <tr>
                        <th scope="col">#</th>
                        <th scope="col">Image</th>
                        <th scope="col">Pro Name</th>
                        <th scope="col">Model</th>
                        <th scope="col">Color</th>
                        <th scope="col">Camera</th>
                        <th scope="col">OS</th>
                        <th scope="col">Battery</th>
                        <th scope="col">Processor</th>
                        <th scope="col">Quantity</th>
                        <th scope="col">Price</th>
                        <th scope="col">Update</th>
                        <th scope="col">Delete</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        Connection cn = null;
                        Statement st = null;

                        int i = 1;

                        try {

                            Class.forName("com.mysql.jdbc.Driver");
                            cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mobile_store", "root", "root");
                            st = cn.createStatement();
                            String sql = "select * from product_tbl";
                            ResultSet rs = st.executeQuery(sql);
                            while (rs.next()) {


                    %>
                    <tr>
                <form action="Admin_addproduct" method="post">
                    <th scope="row"><%=i++%></th>
                    <input type="hidden" name="pid" value="<%=rs.getString("pid")%>">
                    <td><img src="<%=rs.getString("Product_image")%>" height="75" width="75"></td>
                    <td><input type="text" name="ProductName" value="<%=rs.getString("Product_name")%>" class="form-control"></td>
                    <td><input type="text" name="ProductModelName" value="<%=rs.getString("Model_name")%>" class="form-control"></td>
                    <td><input type="text" name="ProductColour" value="<%=rs.getString("colour")%>" class="form-control"></td>
                    <td><input type="text" name="ProductCamera" value="<%=rs.getString("Camera")%>" class="form-control"></td>
                    <td><input type="text" name="Product_OS" value="<%=rs.getString("Operating_system")%>" class="form-control"></td>
                    <td><input type="text" name="ProductBattery" value="<%=rs.getString("Battery")%>" class="form-control"></td>
                    <td><input type="text" name="ProductProcessor" value="<%=rs.getString("Processor")%>" class="form-control"></td>
                    <td><input type="text" name="ProductQuantity" value="<%=rs.getString("Quantity")%>" class="form-control"></td>
                    <td><input type="text" name="ProductPrice" value="<%=rs.getString("Price")%>" class="form-control"></td>
                    <td><input type="submit" name="AddProductSubmit" value="Update" class="btn btn-success"></td>
                    <td><input type="submit" name="AddProductSubmit" value="Delete" class="btn btn-danger"></td>
                </form>
                </tr>

                <%
                        }

                    } catch (Exception ex) {

                    }
                %>

                </tbody>
            </table>
        </div>
    </body>
</html>