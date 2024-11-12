<%-- 
    Document   : feedback_list
    Created on : 5 Feb, 2024, 1:08:42 PM
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
        <title>Feedback list</title>
        <%@include file="Admin_header.jsp" %>
    </head>
    <body>
        <br>
        <div class="container">
            <h2 style="text-align: center;">Feedback list</h2>
            <br>
            <table class="table table-hover table-dark">
                <thead>
                    <tr>
                        <th scope="col">#</th>
                        <th scope="col">Name</th>
                        <th scope="col">Email</th>
                        <th scope="col">Contact</th>
                        <th scope="col">Discription</th>
                        <th scope="col">Experience</th>
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
                            String sql = "select * from feedback_tbl where email='"+session.getAttribute("email")+"'"; // replace with your table name
                            ResultSet rs = st.executeQuery(sql);
                            while (rs.next()) {
                    %>
                    <tr>
                        <form action="user_feedback" method="post">
                        <th scope="row"><%=i++%></th>
                        <input type="hidden" name="fid" value="<%=rs.getString("fid")%>">
                        <td><input type="text" name="feed_name" value="<%=rs.getString("sname")%>" class="form-control"></td>
                        <td><input type="text" name="feed_email" value="<%=rs.getString("email")%>" class="form-control"></td>
                        <td><input type="text" name="feed_contact" value="<%=rs.getString("contact")%>" class="form-control"></td>
                        <td><input type="text" name="feed_desc" value="<%=rs.getString("Discription")%>" class="form-control"></td>
                        <td><input type="text" name="Professional" value="<%=rs.getString("experience")%>" class="form-control"></td>
                        <td><input type="submit" name="feedback" value="Update" class="btn btn-success"></td>
                        <td><input type="submit" name="feedback" value="Delete" class="btn btn-danger"></td>
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