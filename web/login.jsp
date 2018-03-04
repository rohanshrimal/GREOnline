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
        <style>
            
            h1{
                color:blue;
                font-size:25pt;
            }
        </style>
    </head>
    <body>
        <h1>G R E - O N L I N E</h1><hr>
        <form action="verifyuser" method="post" onsubmit="return checkCredentials()">
            <pre>
            USER-ID     <input type="text" name="id" id="id"/>
            PASSWORD    <input type="password" name="pwd" id="pwd"/>
            USER-TYPE   <select name="utype" id="utype"><option> Student </option><option> Admin </option></select>
            SAVE PASSWORD <input type="checkbox" value="yes" name="sp"/>
            
            <input type="submit" value="LOG-IN"/>
            </pre>

        </form>
        <hr>
        <pre>
        <a href="newuser.jsp">NEW ACCOUNT</a>

        <a href="index.html">HOME</a>
        </pre>
        <hr>
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
                
                return true;
                
            }
        </script>
    </body>
</html>
