<%-- 
    Document   : product_category_view
    Created on : 10 Feb, 2024, 1:25:26 PM
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
        <title>View category</title>
        <link rel="stylesheet" href="bootstrap.min.css">
        <%@include file="User_header.jsp"%>
        
        <style>
            .categorie{
                display: inline-block;
                margin: 47px;
                background-color: whitesmoke;
                padding: 13px;
            }
            .description {
        width: 300px; /* Adjust this value as needed */
        word-wrap: break-word;
    }
    .categorie div {
        margin-bottom: 10px; /* Adjust this value as needed */
    }
        </style>
    </head>
    <body>
       
        <div class="container">
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
            <div class="categorie">
                <div class="row">
                    <form action="product_list_view.jsp" method="post">
                    <div class="col-sm-12">
                        <center><img src="<%=rs.getString("Product_image")%>" height="230" width="260">
                            <br><br>
                        <p>Name:<%=rs.getString("Product_name")%></p>
                        <p class="description">Description:<%=rs.getString("Discription")%></p>
                        <p>Amount:<%=rs.getString("Amount")%></p>
                        <input type="submit" name="" value="View More" class="btn btn-primary"></center>
                        </div>
                    </form>
                </div>
            </div>
                        <%
                        }

                    } catch (Exception ex) {

                    }
                %>
        </div>
    </body>
</html>
