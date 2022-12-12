<%-- 
    Document   : register
    Created on : Sep 5, 2022, 6:45:17 PM
    Author     : sai
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration</title>
        <link rel="shortcut icon" href="https://www.codewithc.com/wp-content/uploads/2014/11/blood-bank-management-system.jpg" type="image/jpg">
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
                margin: 20px;
            }
            .register-card{
                width: 415px;
                height: 485px;
                background-color: maroon;
                border-radius:20px;
                margin-left: 527px;
                color: yellow;
                font-size: 24px;
                font-weight: bold;
                padding: 25px;
            }
            #user{
                width: 57%;
                height:40px;
                margin-left: 8px;
                margin-bottom: 18px;
                background-color: yellow;
                border-radius: 20px;
                border:none;
                outline:none;
                color: black;
                padding-left: 15px;
                font-size: 16px;
            }
            #user::placeholder{
                color: black;
            }
            
            input[type="number"]{
                width: 57%;
                height:40px;
                margin-left: 68px;
                margin-bottom: 18px;
                background-color: yellow;
                border-radius: 20px;
                border:none;
                outline:none;
                color: black;
                padding-left: 15px;
                font-size: 16px;
            }
            input[type="number"]::placeholder{
                color: black;
            }
            input[type="email"]{
                width: 57%;
                height:40px;
                margin-left: 78px;
                margin-bottom: 18px;
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
            #age{
                width: 57%;
                height:40px;
                margin-left: 99px;
                margin-top: 18px;
                margin-top: 15px;
                background-color: yellow;
                border-radius: 20px;
                border:none;
                outline:none;
                color: black;
                padding-left: 15px;
                font-size: 16px;
            }
            #age::placeholder{
                color: black;
            }
            #Blood{
                width: 57%;
                height:40px;
                margin-bottom: 18px;
                margin-left: 7px;
                background-color: yellow;
                border-radius: 20px;
                border:none;
                outline:none;
                color: black;
                padding-left: 15px;
                font-size: 16px;
            }
            #Blood::placeholder{
                color: black;
            }
            #loc{
                width: 57%;
                height:40px;
                margin-left: 50px;
                margin-bottom: 18px;
                background-color: yellow;
                border-radius: 20px;
                border:none;
                outline:none;
                color: black;
                padding-left: 15px;
                font-size: 16px;
            }
            #loc::placeholder{
                color: black;
            }
            input[type="password"]{
                width: 57%;
                height:40px;
                background-color: yellow;
                margin-left: 41px;
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
                margin-left: 92px;
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
        <h1>User Registration</h1>
        <div class="register-card">
            <form action="Register" method="post">
                <label for="user">
                    Donor Name :</label> <input type="text" name="UName" id="user" placeholder="Enter Username..." autocomplete="off" autofocus required>
                <br>
                <label for="mob">
                    Mobile :</label> <input type="number" name="mob" id="mob" placeholder="Enter Mobile..." autocomplete="off" autofocus required>
                <br>
                <label for="mail">
                    Email :</label> <input type="email" name="Email" id="mail" placeholder="Enter Email..." autocomplete="off" required>
                <br>
                Gender :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<label> Male <input type="radio" name="gender" value="Male"></label>
                &nbsp;&nbsp;<label>  Female <input type="radio" name="gender" value="Female"></label>
                <br>
                <label for="age">
                    Age :</label> <input type="number" name="Age" id="age" placeholder="Enter Age..." autocomplete="off" required>
                <br>
                <label for="Blood">
                    Blood Group :</label> <input type="text" name="BGroup" id="Blood" placeholder="Blood Group in Caps..." autocomplete="off" required>
                <br>
                <label for="loc">
                    Location :</label> <input type="text" name="LOC" id="loc" placeholder="Enter Location..." autocomplete="off" required>
                <br>
                <label for="pass">
                    Password :</label> <input type="password" name="Pass" id="pass" placeholder="Enter Password..." autocomplete="off" required>
                <br>
                <input type="submit" value="Register">
            </form>
        </div>
    </body>
</html>