<%-- 
    Document   : newuser
    Created on : 4 Dec, 2016, 12:38:51 PM
    Author     : rohan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>WELCOME</title>
    </head>
    <body>
        <PRE>
        <h1><center>WELCOME  TO  GRE  ONLINE</center></h1><hr>
        CREATE YOUR ACCOUNT HERE :
        <form action="SaveUser" method="post" onsubmit="return checkForm()">
        First Name  <input type="text" name="fname" id="fname"/>
        Last Name   <input type="text" name="lname" id="lname"/>
        Email-ID    <input type="text" name="email" id="email"/>
        Password    <input type="password" name="pwd" id="pwd"/>
        DOB         <input type="text" name="dob" id="dob"/>
        
            <input type="submit" value="SIGN-UP"/>
        </form>
        <hr>
        <a href="index.html">HOME</a>

        <a href="login.jsp">EXISTING-USER</a><pre><hr>
        </PRE>
        <script>
        function checkForm()
        {
            if(document.getElementById("fname").value.trim().length===0)
            {
                alert("Enter Your First Name...!!!");
                return false;
            }
            if(document.getElementById("lname").value.trim().length===0)
            {
                alert("Enter Your Last Name...!!!");
                return false;
            }
            if(document.getElementById("email").value.trim().length===0)
            {
                alert("Enter Your Email Id...!!!");
                return false;
            }
            if(document.getElementById("pwd").value.trim().length===0)
            {
                alert("Enter Password...!!!");
                return false;
            }
            if(document.getElementById("dob").value.trim().length===0)
            {
                alert("Enter Your Date of Birth...!!!");
                return false;
            }
            
            return true;

        }
        </script>
    </body>
</html>
