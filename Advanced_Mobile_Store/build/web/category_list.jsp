<%-- 
    Document   : category_list
    Created on : 2 Feb, 2024, 1:48:17 PM
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
        <title>category list</title>
        <%@include file="Admin_header.jsp" %>
    </head>
    <body>
        <br>
        <div class="container">
            <h2 style="text-align: center;">Category List</h2>
            <br>
            <table class="table table-striped">
                <thead>
                    <tr>
                        <th scope="col">#</th>
                        <th scope="col">Image</th>
                        <th scope="col">Pro Name</th>
                        <th scope="col">Description</th>
                        <th scope="col">Amount</th>
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
                            String sql = "select * from category_tbl";
                            ResultSet rs = st.executeQuery(sql);
                            while (rs.next()) {


                    %>
                    <tr>
                <form action="Admin_categorie" method="post">
                    <th scope="row"><%=i++%></th>
                    <input type="hidden" name="cid" value="<%=rs.getString("Cid")%>">
                    <td><img  src="<%=rs.getString("Product_image")%>" height="75" width="75"></td>
                    <td><input type="text" name="Cat_ProductName" value="<%=rs.getString("Product_name")%>" class="form-control"></td>
                    <td>
                        <textarea name="Cat_ProductDescription" class="form-control"><%=rs.getString("Discription")%></textarea>
                    </td>
                    <td><input type="text" name="Cat_ProductAmount" value="<%=rs.getString("Amount")%>" class="form-control"></td>
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
