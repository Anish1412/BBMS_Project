<%-- 
    Document   : Edit
    Created on : Sep 7, 2022, 7:39:01 PM
    Author     : sai
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit</title>
        <link rel="shortcut icon" href="https://cdn4.iconfinder.com/data/icons/pretty_office_3/256/sign-up.png" type="image/png">
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
            }
            .register-card{
                width: 400px;
                height: 560px;
                background-color:maroon;
                border-radius:20px;
                margin-left: 520px;
                color: yellow;
                font-size: 24px;
                font-weight: bold;
                padding: 25px;
            }
            #user{
                width: 50%;
                height:40px;
                margin-left: 32px;
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
                width: 50%;
                height:40px;
                margin-left: 90px;
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
                width: 50%;
                height:40px;
                margin-left: 101px;
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
                width: 50%;
                height:40px;
                margin-left: 120px;
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
                width: 50%;
                height:40px;
                margin-bottom: 18px;
                margin-left: 26px;
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
                width: 50%;
                height:40px;
                margin-left: 70px;
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
                width: 50%;
                height:40px;
                background-color: yellow;
                margin-left: 61px;
                margin-bottom: 18px;        
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
            #prepass{
                width: 50%;
                height:40px;
                background-color: yellow;
                margin-left: 3px;        
                border-radius: 20px;
                border:none;
                outline:none;                  
                color: black;
                padding-left: 15px;
                font-size: 16px;
            }
            #prepass::placeholder{
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
                margin-left: 84px;
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
        <h1>Update Account</h1>
        <div class="register-card">
            <form action="Edit" method="post">
                <label for="user">
                    Donor Name :</label> <input type="text" name="UserName" id="user" placeholder="Enter Username..." autocomplete="off" autofocus required>
                <br>
                <label for="mob">
                    Mobile :</label> <input type="number" name="mob" id="mob" placeholder="Enter Mobile..." autocomplete="off" autofocus required>
                <br>
                <label for="mail">
                    Email :</label> <input type="email" name="EmailID" id="mail" placeholder="Enter Email..." autocomplete="off" required>
                <br>
                Gender :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<label> Male <input type="radio" name="gender" value="Male"></label>
                <label>  Female <input type="radio" name="gender" value="Female"></label>
                <br>
                <label for="age">
                    Age :</label> <input type="number" name="Age" id="age" placeholder="Enter Age..." autocomplete="off" required>
                <br>
                <label for="Blood">
                    Blood Group :</label> <input type="text" name="BGroup" id="Blood" placeholder="Blood Group..." autocomplete="off" required>
                <br>
                <label for="loc">
                    Location :</label> <input type="text" name="LOC" id="loc" placeholder="Enter Location..." autocomplete="off" required>
                <br>
                <label for="pass">
                    Password :</label> <input type="password" name="Password" id="pass" placeholder="Enter Password..." autocomplete="off" required>
                <br>
                <label for="prepass">
                 Prev. Password :</label> <input type="password" name="PrevPass" id="prepass" placeholder="Enter Prev Password..." autocomplete="off" required>
                <br>
                <input type="submit" value="Update">
            </form>
        </div>
    </body>
</html>