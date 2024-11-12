<%-- 
    Document   : user_payment
    Created on : 12 Jan, 2024, 5:27:16 PM
    Author     : rohit
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Payment</title>
        <link rel="stylesheet" href="bootstrap.min.css">
        <%@include file="User_header.jsp"%>
        <link rel="stylesheet" type="text/css" href="style.css">
        <style>
            .grid-container {
                display: grid;
                grid-template-columns: auto auto;
                padding: 10px;
            }
            .grid-item {
                padding: 20px;
                font-size: 30px;
                text-align: center;
            }
            body{
                background-image: url(payment.jpg);
                background-repeat:no-repeat;
                background-size: cover;
            }
            .input {
                border-radius: 10px;
                outline: 4px solid #FEBF00;
                border: 0;
                font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif;
                background-color: #99FFFF;
                outline-offset: 3px;
                padding: 10px 1rem;
                transition: 0.25s;
                width: 500px;
            }
            .input:focus {
                outline-offset: 5px;
                background-color: #fff
            }
            input{
                text-align: center;
            }

            .select {
                border: none;
                outline: none;
                border-radius: 15px;
                padding: 1em;
                background-color: #ccc;
                box-shadow: inset 2px 5px 10px rgba(0,0,0,0.3);
                transition: 300ms ease-in-out;
                width:550px;
            }

            .select:focus {
                background-color: white;
                transform: scale(1.05);
                box-shadow: 13px 13px 100px #969696,
                    -13px -13px 100px #ffffff;
            }
        </style>

    <body>
        <br><br>
        <div class="container">
            <form action="payment" method="post">
                <h2 class="text-center">Select Payment Method</h2>
                <br>
                <div class="row">
                    <div class="col-sm-3"></div>                   
                    <div class="col-sm-6">

                        <select  id="paymentMethod" name="paymentMethod" class="select">
                            <option style="font-size:20px;text-align: center;">Select Method</option>
                            <option>Debit Card/Credit Card</option>
                            <option>UPI(Google pay/Phone pay)</option>
                            <option>Net Banking</option>
                        </select>
                        <div id="additionalFields"></div>
                    </div>
                    <div class="col-sm-3"></div>
                </div>

        </div>

        <script>
            document.getElementById("paymentMethod").addEventListener("change", function () {
            var paymentMethod = this.value;
            var additionalFields = "";
            if (paymentMethod == "Debit Card/Credit Card") {
            additionalFields = `
                            <br><br>
                        <input type="text" placeholder="Card Holder Name" name="card_name" class="input" required="">
                        <br><br><br>
                        <input type="text" placeholder="Expiry Date" name="Exp_date" class="input" required="">
                        <br><br><br>
                        <input type="text" placeholder="CVV" name="dcard_cvv" class="input" required="">
                        <br><br><br>
                        <input type="text" placeholder="Amount" name="card_amount" class="input" onkeypress="javascript:return isContactno(event)" required="">
                        <br><br><br>
                        <button  type="submit" value="confirm" name="debit_confirm" class="rainbow-hover" style="text-align:center">
                                <span class="sp">Confirm</span>
                            </button>
                    `;
            } else if (paymentMethod == "UPI(Google pay/Phone pay)")  {
            additionalFields = `
                        <br><br>
                        <input type="text" placeholder="UPI id" name="upi_id" class="input" required="">
                        <br><br><br>
                        <input type="text" placeholder="Amount" name="ucard_amount" class="input" onkeypress="javascript:return isContactno(event)" required="">
                        <br><br><br>
                        <button  type="submit" value="confirm" name="debit_confirm" class="rainbow-hover" style="text-align:center">
                                <span class="sp">Confirm</span>
                            </button>
                    `;
            } else if (paymentMethod == "Net Banking") {
            additionalFields = `
        <br><br>
        <select name="bank_list" id="bank_list" class="input" required="">
            <option value="" disabled selected>Select a Bank</option>
            <option value="Bank of India">Bank of India</option>
            <option value="Bank of Maharashtra">Bank of Maharashtra</option>
            <option value="State bank of India">State bank of India</option>
            <option value="Canara bank">Canara bank</option>
            <option value="Union bank of India">Union bank of India</option>
            <!-- Add more options as needed -->
        </select>
        <br><br><br>
        <input type="text" placeholder="Customer Code" name="cust_code" class="input" required="">
        <br><br><br>
        <input type="text" placeholder="Password" name="cust_pasword" class="input" required="">
        <br><br><br>
        <input type="text" placeholder="Amount" name="ncard_amount" class="input" onkeypress="javascript:return isContactno(event)" required="">
        <br><br><br>
        <button  type="submit" value="confirm" name="debit_confirm" class="rainbow-hover" style="text-align:center">
                                <span class="sp">Confirm</span>
                            </button>
    `;
            }


            document.getElementById("additionalFields").innerHTML = additionalFields;
            });
        </script>
    </form>
</body>
</html>
