<%-- 
    Document   : BloodBank
    Created on : Sep 6, 2022, 8:50:43 PM
    Author     : sai
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>BloodBank</title>
        <link rel="shortcut icon" href="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRZo_bH40T6rSelnM5H3wyS-UC1kJajBERvAFaNKcVp89fbKgDlflM5dfTEyQ-f_JDXHvA&usqp=CAU" type="image/png">
        <style>
            body{
                background-color: white;
            }
            img{
                width:300px;
                height:80px;
                margin: 10px;
            }
            .container{ 
                background-color: maroon;
                width: 100%;
                height: 100px;
                border-bottom: 1px solid black;
            }
            ul{
                float: right;
            }
            li{
                display: inline;
                list-style-type: none;
            }
            a{               
                color:yellow;
                text-decoration: none;
                padding: 0px 20px 0px 20px;
                font-size: 20px;
            }
            a:hover{
                text-shadow: 2px 2px 2px black;
            }
            h1{
                text-align: center;
                font-size: 45px;
                font-weight: bold;
                color:maroon;
                margin-top: 150px;
            }
            .login-card{
                width: 350px;
                height: 110px;
                background-color: maroon;
                border-radius:20px;
                margin-left: 550px;
                color: yellow;
                font-size: 24px;
                font-weight: bold;
                padding: 25px;
            }
            #mail{
                width: 50%;
                height:40px;
                margin-left: 6px;
                margin-bottom: 18px;
                background-color: yellow;
                border-radius: 20px;
                border:none;
                outline:none;
                color: black;
                padding-left: 15px;
                font-size: 16px;
            }
            #mail::placeholder{
                color: black;
            }
            input[type="submit"]{
                width: 60%;
                height:35px;
                background-color: yellow;
                color:maroon;
                border-radius: 20px;
                border:none;
                font-size: 18px;
                font-weight: bold;
                margin:10px;
                margin-left: 70px;
            }
            input[type="submit"]:hover{
                border:1px solid black;
                background-color: white;
                color:maroon;
            }
        </style>
    </head>
    <body>
        <div class="container">
            <img src="https://images.projectsgeek.com/2015/11/Blood-Donation-Management-System.jpg" alt="Image not available">
                <ul>
                    <li><a href="index.html">Home</a></li>
                    <li><a href="BloodBank.jsp">Blood Bank</a></li>
                    <li><a href="Hospital.jsp">Hospital</a></li>
                    <li><a href="SearchDonor.jsp">Search Donor</a></li>
                    <li><a href="AboutUs.jsp">About us</a></li>
                </ul>            
        </div>
        <h1>Blood Banks in Navi Mumbai</h1>
        <div class="login-card">
            <form action="BloodBank" method="post">
                <label for="mail">
                    Blood group :</label> <input type="text" name="Email" id="mail" placeholder="Blood Group in Caps..." autocomplete="off" required>
                <br>
                <input type="submit" value="Search">
            </form>
        </div>
    </body>
</html>