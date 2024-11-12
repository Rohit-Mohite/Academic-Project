<%-- 
    Document   : bookinglist
    Created on : 8 Jan, 2024, 5:54:57 AM
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
        <title>List of booking</title>
        <link rel="stylesheet" href="bootstrap.min.css">
        <%@include file="Admin_header.jsp"%>
    </head>
    <body>
        <div class="container mt-5">
            <h2 style="text-align: center">Booking List</h2>
            <br>
            <table class="table table-striped">
                <thead>
                    <tr>
                        <th scope="col">#</th>
                        <th scope="col">Name</th>
                        <th scope="col">Address</th>
                        <th scope="col">Contact</th>
                        <th scope="col">Email</th>
                        <th scope="col">Model no</th>
                        <th scope="col">Brand</th>
                        <th scope="col">Date</th>
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
                            String sql = "select * from booking_tbl";
                            ResultSet rs = st.executeQuery(sql);
                            while (rs.next()) {


                    %>
                    <tr>
                <form action="user_booking" method="post">
                    <th scope="row">1</th>
                    <input type="hidden" name="Bid" value="<%=rs.getString("Bid")%>" class="form-control">
                    <td><input type="text" name="txt_name" value="<%=rs.getString("User_name")%>" class="form-control"></td>
                    <td><input type="text" name="txt_address" value="<%=rs.getString("user_address")%>" class="form-control"></td>
                    <td><input type="text" name="txt_contact" value="<%=rs.getString("contact")%>" class="form-control"></td>
                    <td><input type="text" name="txt_email" value="<%=rs.getString("email")%>" class="form-control"></td>
                    <td><input type="text" name="txt_modelnum" value="<%=rs.getString("Model_no")%>" class="form-control"></td>
                    <td><input type="text" name="txt_brand" value="<%=rs.getString("Brand")%>" class="form-control"></td>
                    <td><input type="text" name="txt_date" value="<%=rs.getString("Date")%>" class="form-control"></td>
                    <td><input type="text" name="txt_price" value="<%=rs.getString("Price")%>" class="form-control"></td>
                    <td><input type="submit" name="txt_submit" value="Update" class="btn btn-success"></td>
                    <td><input type="submit" name="txt_submit" value="Delete" class="btn btn-danger"></td>

                </form>
                </tr>
                <%                            }

                    } catch (Exception ex) {

                    }
                %>
                </tbody>
            </table>
        </div>

    </body>
</html>
