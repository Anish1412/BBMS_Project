<%-- 
    Document   : WelcomeEdit
    Created on : Sep 12, 2022, 7:32:34 PM
    Author     : sai
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>WelcomeEdit</title>
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
                margin-bottom: 30px;
            }
            ul{
                float: right;
            }
            li{
                display: inline;
                list-style-type: none;
            }
            li > a{               
                color:yellow;
                text-decoration: none;
                padding: 0px 20px 0px 20px;
                font-size: 20px;
            }
            li > a:hover{
                text-shadow: 2px 2px 2px black;
            }
            h1{
                text-align: center;
                font-size: 45px;
                font-weight: bold;
                color:blue;
                margin: 170px 250px 20px 250px;
            }
            #link{               
                color:maroon;
                text-decoration: none;
                padding: 0px 20px 0px 20px;
                font-size: 25px;
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
        <h1>YOU HAVE UPDATED YOUR ACCOUNT SUCCESSFULLY!!</h1><br>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        
        <a href="login.jsp" id="link">Login</a> |
        <a href="Delete.jsp" id="link">Delete</a>
    </body>
</html>