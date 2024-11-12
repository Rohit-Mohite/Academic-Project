<%-- 
    Document   : user_bookinglist
    Created on : 3 Feb, 2024, 12:54:51 PM
    Author     : rohit
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@page import="java.sql.ResultSet"%>
        <%@page import="java.sql.DriverManager"%>
        <%@page import="java.sql.Statement"%>
        <%@page import="java.sql.Connection"%>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Booking list</title>
        <%@include file="Admin_header.jsp" %>

    </head>
    <body>
        <br>
        <div class="container">
            <br><br>
            <h2 style="text-align: center;">Booking list</h2>
            <br>
            <table class="table table-hover table-dark">
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
                            String sql = "select * from booking_tbl where email='"+session.getAttribute("email")+"'"; 
                            ResultSet rs = st.executeQuery(sql);
                            while (rs.next()) {
                    %>
                    <tr>
                <form action="user_booking" method="post">
                    <th scope="row"><%=i++%></th>
                    <input type="hidden" name="Bid" value="<%=rs.getString("Bid")%>">
                    <td><%=rs.getString("User_name")%></td> <!-- replace with your column names -->
                    <td><%=rs.getString("user_address")%></td> 
                    <td><%=rs.getString("contact")%></td>
                    <td><%=rs.getString("email")%></td>
                    <td><%=rs.getString("Model_no")%></td>
                    <td><%=rs.getString("Brand")%></td>
                    <td><%=rs.getString("Date")%></td>
                    <td><%=rs.getString("Price")%></td>
                    <td><input type="submit" name="txt_submit" value="Delete" class="btn btn-danger"></td>
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
