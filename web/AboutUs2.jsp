<%-- 
    Document   : AboutUs2
    Created on : Sep 12, 2022, 9:25:21 PM
    Author     : sai
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>About Us</title>
        <link rel="shortcut icon" href="https://www.freeiconspng.com/thumbs/about-us-icon/information-about-us-icon-17.png" type="image/png">
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
                margin: 23px;
            }
            .register-card{
                width: 350px;
                height: 470px;
                background-color: maroon;
                border-radius:20px;
                margin-left: 564px;
                color: yellow;
                font-size: 24px;
                font-weight: bold;
                padding: 25px;
            }
        </style>
    </head>
    <body>
        <div class="container">
            <img src="https://images.projectsgeek.com/2015/11/Blood-Donation-Management-System.jpg" alt="Image not available">
                <ul>
                    <li><a href="BloodBank2.jsp">Blood Bank</a></li>
                    <li><a href="Hospital2.jsp">Hospital</a></li>
                    <li><a href="SearchDonor2.jsp">Search Donor</a></li>
                    <li><a href="AboutUs2.jsp">About us</a></li>
                    <li style="margin-left:50px"><a href="index.html" style="font-size:25px">Logout</a></li>
                </ul>            
        </div>
        <h1>About Us</h1>
        <div class="register-card">
            <b><u>Blood donation</u></b> and transfusion service is an indispensable part of contemporary medicine and health care. Blood management has been recognized as a challenging task because of life threatening nature of blood products entails the punctilious administration due to its perishable nature & required timely processing and it also saves the life.<br>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Such great challenge has been considerably alleviated with the development of information and computer technology. e-Blood Bank is an integrated blood bank automation system.
        </div>
    </body>
</html>