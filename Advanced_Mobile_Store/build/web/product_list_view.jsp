<%-- 
    Document   : product_list_view
    Created on : 10 Feb, 2024, 5:15:27 PM
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
        <title>product view</title>
        <%@include file="User_header.jsp"%>
        <style>
            .categorie{
                display: inline-block;
                margin: 43px;
                background-color:#F0F8FF;
                padding: 13px;
            }
            body{
                background-color: #E5E4E2;
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
                    String sql = "select * from product_tbl";
                    ResultSet rs = st.executeQuery(sql);
                    while (rs.next()) {
            %>
            <div class="categorie">
                <div class="row">
                    <form action="booking.jsp" method="post">
                    <div class="col-sm-12">
                        <div style="display: flex; flex-direction: column; align-items: center; text-align: left;">
                            <img src="<%=rs.getString("Product_image")%>" height="230" width="260">
                            <br>
                            <p>Name: <%=rs.getString("Product_name")%></p>
                            <p>Model: <%=rs.getString("Model_name")%></p>
                            <p>Processor: <%=rs.getString("Processor")%></p>
                            <p>Quantity: <%=rs.getString("Quantity")%></p>
                            <p>Colour: <%=rs.getString("colour")%></p>
                            <p>Amount: <%=rs.getString("Price")%></p>
                            <input type="hidden" name="Model_name" value="<%=rs.getString("Model_name")%>">
                            <input type="hidden" name="Price" value="<%=rs.getString("Price")%>">
                            <input type="hidden" name="Product_name" value="<%=rs.getString("Product_name")%>">
                            <input type="submit" name="" value="Buy Now" class="btn btn-primary" style="margin-top: 20px;">
                        </div>
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
