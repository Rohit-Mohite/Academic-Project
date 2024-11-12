<%-- 
    Document   : booking
    Created on : 31 Jan, 2024, 4:48:03 PM
    Author     : rohit
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>booking</title>
        <link rel="stylesheet" href="bootstrap.min.css">
        <%@include file="User_header.jsp"%>

        <style>
            .order-form .container {
                color: #4c4c4c;
                padding: 20px;
                box-shadow: 0 0 10px 0 rgba(0, 0, 0, .1);
                max-width: 650px;
            }

            .order-form-label {
                margin: 8px 0 0 0;
                font-size: 14px;
                font-weight: bold;
            }

            .order-form-input,
            .form-label,
            .form-check-label {
                font-family: 'Open Sans', sans-serif;
                font-size: 14px;

            }
            .btn-submit:hover {
                background-color: #0D47A1 !important;
            }


        </style>
    </head>
    <body>

        <div class="container">
            <form action="user_booking" method="post">
                <br><br>
                <div class="row">

                    <h1 style="text-align: center;">Booking form</h1>
                    <hr class="mt-1" />
                    <div class="col-sm-3"> </div>
                    <div class="col-sm-3">
                        <div class="form-outline">
                            <label class="form-label" for="form2">Name</label>
                            <input type="text" id="form2" name="txt_name" class="form-control order-form-input" onkeypress="javascript :return isString(event)" required="">

                        </div>
                    </div>
                    <div class="col-sm-3">
                        <div class="form-outline">
                            <label class="form-label" for="form2">Shipping address</label>
                            <input type="text" id="form2" name="txt_address" class="form-control order-form-input" required="">

                        </div>
                    </div>
                    <div class="col-sm-3"> </div>
                </div>
                <br>
                <div class="row">
                    <div class="col-sm-3"> </div>
                    <div class="col-sm-3">
                        <div class="form-outline">
                            <label class="form-label" for="form2">Contact</label>
                            <input type="text" id="form2" name="txt_contact" class="form-control order-form-input" onkeypress="javascript :return isContactno(event)" maxlength="10" minlength="10"/>

                        </div>
                    </div>
                    <div class="col-sm-3">
                        <div class="form-outline">
                            <label class="form-label" for="form2">Email</label>
                            <input type="text" id="form2" value="<%=session.getAttribute("email")%>" name="txt_email" class="form-control order-form-input" required="">
                        </div>
                    </div>
                    <div class="col-sm-3"> </div>
                </div>
                <br>
                <div class="row">
                    <div class="col-sm-3"> </div>
                    <div class="col-sm-3">
                        <div class="form-outline">
                            <label class="form-label" for="form2">Model </label>
                            <input type="text" id="form2" value="<%=request.getParameter("Model_name")%>" name="txt_modelnum" class="form-control order-form-input" required="">
                        </div>
                    </div>
                    <div class="col-sm-3">
                        <div class="form-outline">
                            <label class="form-label" for="form2">Brand name</label>
                            <input type="text" id="form2" value="<%=request.getParameter("Product_name")%>"  name="txt_brand" class="form-control order-form-input" required="">
                        </div>
                    </div>
                    <div class="col-sm-3"> </div>
                </div>
                <br>
                <div class="row">
                    <div class="col-sm-3"> </div>
                    <div class="col-sm-3">
                        <label class="form-label" for="date-picker-example">Date</label>
                        <div class="form-outline datepicker" data-mdb-toggle-button="false">
                            <input type="date" name="txt_date" class="form-control order-form-input" id="datepicker1" data-mdb-toggle="datepicker" required=""/>
                        </div>
                    </div>
                    <div class="col-sm-3">
                        <div class="form-outline">
                            <label class="form-label" for="form7">Price</label>
                            <input type="text" name="txt_price" value="<%=request.getParameter("Price")%>" id="form7" class="form-control order-form-input" required=""/>                                    
                        </div>
                    </div>
                    <div class="col-sm-3"> </div>
                </div>
                <br><br>
                <div class="row">
                    <div class="col-sm-3"> </div>
                    <div class="col-sm-3">
                        <button type="submit" name="txt_submit" value="confirm" id="btnSubmit" class="btn btn-primary d-block mx-auto btn-submit">Confirm</button>
                    </div>
                    <div class="col-sm-3">
                        <button type="reset" name="txt_cancel" value="cancel" id="btnSubmit" class="btn btn-primary d-block mx-auto btn-submit">Cancel</button>
                    </div>
                    <div class="col-sm-3"> </div>
                </div>
            </form>
        </div>

        <script>
            window.onload = function () {
                var today = new Date();
                var dd = String(today.getDate()).padStart(2, '0');
                var mm = String(today.getMonth() + 1).padStart(2, '0'); //January is 0!
                var yyyy = today.getFullYear();
                today = yyyy + '-' + mm + '-' + dd;
                document.getElementById('datepicker1').value = today;
            };
        </script>

    </body>
</html>
