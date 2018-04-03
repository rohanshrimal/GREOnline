<%-- 
    Document   : login
    Created on : 4 Dec, 2016, 12:24:06 PM
    Author     : rohan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>LOG IN</title>
        <link rel="stylesheet" type="text/css" href="grestyleing.css">
        <link href='https://fonts.googleapis.com/css?family=Roboto:400,700,300|Material+Icons' rel='stylesheet' type='text/css'>
        
    </head>
    <body>
        <div class="heading">GRE-ONLINE</div><br>
    <center>
    <a href="newuser.jsp" class="links">SIGN-UP</a>
    <a href="index.html"  class="links">HOME</a>
    </center>   
    <br>
    <center>
        <div style="border: 1px solid #f44336; padding: 15px; width:500px">
        <form action="verifyuser" method="post" onsubmit="return checkCredentials()">
            <table>
                <tr>
                    <td>USER-ID</td>     
                    <td class="ibox"><input type="text" name="id" id="id"/></td>
                </tr>
                <tr>
                    <td>PASSWORD</td>    
                    <td class="ibox"><input type="password" name="pwd" id="pwd"/></td>
                </tr>
                <tr>
                    <td>USER-TYPE</td>   
                    <td class="ibox">
                        <select name="utype" id="utype">
                            <option> Student </option>
                            <option> Admin </option>
                        </select>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                </tr>
                
                <tr>
                    <td>SAVE PASSWORD</td> 
                    <td>&nbsp;&nbsp;<input type="checkbox" value="yes" name="sp" id="sp"/></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                </tr>
                
                <tr>
                    <td colspan="2" class="ibox"><input type="submit" value="LOG-IN"/></td>
                </tr>
            </table>
        </form>
        </div>
    </center>
    <br><br>
         <script>
            function checkCredentials()
            {
                var uid=document.getElementById("id").value;
                var pwd=document.getElementById("pwd").value;
                var utype=document.getElementById("utype").value;
                
                if(uid.trim().length===0)
                {  
                    alert("User Id Must Be Filled...!!!");
                    return false;
                }
                
                if(pwd.trim().length===0)
                {
                    alert("Password Must Be Filled...!!!");
                    return false;
                }
                
                if(utype.trim().length===0)
                {
                    alert("Please Select Your User Type First...!!!");
                    return false;
                }
                if(document.getElementById("sp").checked)
                {
                    setCookie("username",uid,30);
                    setCookie("password",pwd,30);
                }
                return true;
                
            }
        
        function setCookie(cname, cvalue, exdays)
        {
            var d = new Date();
            d.setTime(d.getTime() + (exdays*24*60*60*1000));
            var expires = "expires="+ d.toUTCString();
            document.cookie = cname + "=" + cvalue + ";" + expires + ";path=/";
        }
        
        function getCookie(cname) 
        {
            var name = cname + "=";
            var decodedCookie = decodeURIComponent(document.cookie);
            var ca = decodedCookie.split(';');
            for(var i = 0; i <ca.length; i++) {
                var c = ca[i];
                while (c.charAt(0) == ' ') {
                    c = c.substring(1);
                }
                if (c.indexOf(name) == 0) {
                    return c.substring(name.length, c.length);
                }
            }
            return "";
        }
        
       document.getElementById("id").value=getCookie("username");
       document.getElementById("pwd").value=getCookie("password");
      
            
         </script>
    </body>
</html>
