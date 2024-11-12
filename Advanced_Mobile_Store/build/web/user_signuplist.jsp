<%-- 
    Document   : user_signuplist
    Created on : 3 Feb, 2024, 8:21:29 AM
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
        <title>user_signuplist</title>
        <%@include file="Admin_header.jsp" %>
    </head>
    <body>
        <br>
        <div class="container">
            <h2 style="text-align: center;">Signup list</h2>
            <br>
            <table class="table table-hover table-dark">
                <thead>
                    <tr>
                        <th scope="col">#</th>
                        <th scope="col">Name</th>
                        <th scope="col">Address</th>
                        <th scope="col">Contact</th>
                        <th scope="col">Email</th>
                        <th scope="col">Password</th>
                        <th scope="col">Confirm_pass</th>
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
                            String sql = "select * from user_signup_tbl"; // replace with your table name
                            ResultSet rs = st.executeQuery(sql);
                            while (rs.next()) {
                    %>
                    <tr>
                <form action="user_signup" method="post">
                      <th scope="row"><%=i++%></th>
                    <input type="hidden" name="Usid" value="<%=rs.getString("Usid")%>">
                    <td><input type="text" name="userName" value="<%=rs.getString("sname")%>" class="form-control"></td>
                    <td><input type="text" name="userAddress" value="<%=rs.getString("address")%>" class="form-control"></td>
                    <td><input type="text" name="userContact" value="<%=rs.getString("contact")%>" class="form-control"></td>
                    <td><input type="text" name="userEmail" value="<%=rs.getString("email")%>" class="form-control"></td>
                    <td><input type="text" name="userPassword" value="<%=rs.getString("spassword")%>" class="form-control"></td>
                    <td><input type="text" name="userConfirmpassword" value="<%=rs.getString("confirm_password")%>" class="form-control"></td>
                    <td><input type="submit" name="userSignupSubmit" value="Update" class="btn btn-success"></td>
                    <td><input type="submit" name="userSignupSubmit" value="Delete" class="btn btn-danger"></td>
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
