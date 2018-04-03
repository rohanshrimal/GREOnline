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
        <link rel="stylesheet" type="text/css" href="grestyleing.css">
        <link href='https://fonts.googleapis.com/css?family=Roboto:400,700,300|Material+Icons' rel='stylesheet' type='text/css'>
        
    </head>
    <body>
        <div class="heading">WELCOME  TO  GRE  ONLINE</div><br>
        
    <center>
        <a href="index.html" class="links">HOME</a>

        <a href="login.jsp" class="links">LOG-IN</a>
        <br><br>
        <div style="border: 1px solid #f44336; padding: 15px; width:500px">
        <div style="font-size: 30px">CREATE YOUR ACCOUNT HERE :</div><br>
        <form action="SaveUser" method="post" onsubmit="return checkForm()">
            <table>
        <tr>
            <td>First Name</td>      
            <td class="ibox"><input type="text" name="fname" id="fname"/></td>
        </tr>
        <tr>
            <td>Last Name</td>       
            <td class="ibox"><input type="text" name="lname" id="lname"/></td>
        </tr>
        <tr>
            <td>Email-ID</td>       
            <td class="ibox"><input type="email" name="email" id="email"/></td>
        </tr>
        <tr>
            <td>Password</td>       
            <td class="ibox"><input type="password" name="pwd" id="pwd"/></td>
        </tr>
        <tr>
            <td>Retype Password</td>
            <td class="ibox"><input type="password" name="pwd" id="retypepwd" onchange="checkPwd()"/></td>
        </tr>
        <tr>
            <td>DOB </td>            
            <td class="ibox"><input type="text" name="dob" id="dob"/></td>
        </tr>
        <tr>
            <td colspan="2" class="ibox"><input type="submit" value="SIGN-UP"/></td>
        </tr>
            </table>
        </form>
        </div>
        
    </center>
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
            if(document.getElementById("pwd").value!==document.getElementById("retypepwd").value)
           {
               alert("Password Does Not Matched...!!!");
               return false;
           }
            if(document.getElementById("dob").value.trim().length===0)
            {
                alert("Enter Your Date of Birth...!!!");
                return false;
            }
            
            return true;

        }
        function checkPwd()
        {
           if(document.getElementById("pwd").value!==document.getElementById("retypepwd").value)
           {
               alert("Password Does Not Matched...!!!");
           }
        }
        </script>
    </body>
</html>
