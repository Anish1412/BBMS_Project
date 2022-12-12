<%-- 
    Document   : login
    Created on : Sep 3, 2022, 7:23:38 PM
    Author     : sai
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
        <link rel="shortcut icon" href="https://repository-images.githubusercontent.com/152029248/bdcac480-f326-11e9-8aa5-dafa9940739b" type="image/png">
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
                margin-top: 70px;
            }
            .login-card{
                width: 390px;
                height: 210px;
                background-color: maroon;
                border-radius:20px;
                margin-left: 540px;
                color: yellow;
                font-size: 24px;
                font-weight: bold;
                padding: 25px;
            }
            input[type="text"]{
                width: 65%;
                height:40px;
                margin-left: 36px;
                margin-bottom: 15px;
                background-color: yellow;
                border-radius: 20px;
                border:none;
                outline:none;
                color: black;
                padding-left: 15px;
                font-size: 16px;
            }
            input[type="text"]::placeholder{
                color: black;
            }
            input[type="email"]{
                width: 65%;
                height:40px;
                margin-left: 34px;
                margin-bottom: 15px;
                background-color: yellow;
                border-radius: 20px;
                border:none;
                outline:none;
                color: black;
                padding-left: 15px;
                font-size: 16px;
            }
            input[type="email"]::placeholder{
                color: black;
            }
            input[type="password"]{
                width: 65%;
                height:40px;
                background-color: yellow;
                border-radius: 20px;
                border:none;
                outline:none;                  
                color: black;
                padding-left: 15px;
                font-size: 16px;
            }
            input[type="password"]::placeholder{
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
                margin:20px;
                margin-left: 90px;
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
        <h1>User Login</h1>
        <div class="login-card">
            <form action="Login" method="post">
                <label for="user">
                    Name :</label> <input type="text" name="UName" id="user" placeholder="Enter Username..." autocomplete="off" autofocus required>
                <br>
                <label for="mail">
                    Email :</label> <input type="email" name="Email" id="mail" placeholder="Enter Email..." autocomplete="off" required>
                <br>
                <label for="pass">
                    Password :</label> <input type="password" name="Pass" id="pass" placeholder="Enter Password..." autocomplete="off" required>
                <br>
                <input type="submit" value="Login">
            </form>
        </div>
    </body>
</html>