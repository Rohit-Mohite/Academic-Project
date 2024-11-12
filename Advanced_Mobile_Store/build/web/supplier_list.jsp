<%-- 
    Document   : supplier_list
    Created on : 4 Feb, 2024, 10:27:23 AM
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
        <title>Supplier list</title>
        <%@include file="Admin_header.jsp" %>
    </head>
    <body>
        <br><br>
        <div class="container">
            <h2 style="text-align: center;">Supplier list</h2>
            <hr class="mt-1" />
            <br>
            <table class="table table-hover table-dark">
                <thead>
                    <tr>
                        <th scope="col">#</th>
                        <th scope="col">Name</th>
                        <th scope="col">Contact</th>
                        <th scope="col">Email</th>
                        <th scope="col">Pro details</th>
                        <th scope="col">Price</th>
                        <th scope="col">Brand</th>
                        <th scope="col">Total order</th>
                        <th scope="col">Total amount</th>
                        <th scope="col">Address</th>
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
                            String sql = "select * from admin_supplier_tbl"; // replace with your table name
                            ResultSet rs = st.executeQuery(sql);
                            while (rs.next()) {
                    %>
                    <tr>
                        <form action="Admin_supplier" method="post">
                        <th scope="row"><%=i++%></th>
                        <input type="hidden" name="suid" value="<%=rs.getString("suid")%>">
                        <td><input type="text" name="SupplierName" value="<%=rs.getString("sname")%>" class="form-control"></td>
                        <td><input type="text" name="SupplierContact" value="<%=rs.getString("contact")%>" class="form-control"></td>
                        <td><input type="text" name="SupplierEmail" value="<%=rs.getString("email")%>" class="form-control"></td>
                        <td><input type="text" name="productdetails" value="<%=rs.getString("Product_details")%>" class="form-control"></td>
                        <td><input type="text" name="SupplierProductPrice" value="<%=rs.getString("Product_price")%>" class="form-control"></td>
                        <td><input type="text" name="SupplierBrandName" value="<%=rs.getString("Product_Brand")%>" class="form-control"></td>
                        <td><input type="text" name="SupplierTotalOrder" value="<%=rs.getString("Total_order")%>" class="form-control"></td>
                        <td><input type="text" name="SupplierTotalAmount" value="<%=rs.getString("Total_amount")%>" class="form-control"></td>
                        <td><input type="text" name="SupplierAddress" value="<%=rs.getString("address")%>" class="form-control"></td>
                        <td><input type="submit" name="SupplierSignupSubmit" value="Update" class="btn btn-success"></td>
                        <td><input type="submit" name="SupplierSignupSubmit" value="Delete" class="btn btn-danger"></td>
                        </form>
                    </tr>
                    <%
                            }
                        } catch (Exception ex) {
                            ex.printStackTrace();
                        }
                    %>
                </tbody>
            </table>
        </div>
    </body>
</html>