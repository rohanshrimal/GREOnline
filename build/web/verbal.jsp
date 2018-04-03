<%-- 
    Document   : verbal
    Created on : 13 Dec, 2016, 10:55:45 PM
    Author     : rohan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean scope="session" id="user" class="model.userModel"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>WELCOME TO VERBAL SECTION</title>
        <link rel="stylesheet" type="text/css" href="grestyleing.css">
        <link href='https://fonts.googleapis.com/css?family=Roboto:400,700,300|Material+Icons' rel='stylesheet' type='text/css'>
        
    </head>
    <body>
        <div class="heading">VERBAL-SECTION</div><br>
        <div style="color:#f44336; font-size:30px; display: inline;padding-right: 20px ; margin-right:20px">USERNAME : <jsp:getProperty name="user" property="firstName"/> <jsp:getProperty name="user" property="lastName"/></div>
    <br><br><br>
     
        <div style="width:350px">
     <center>
    <a href="#" class="links">READING COMPREHENSION</a><br><br><br>

    <a href="#" class="links" style="padding-right:20px;padding-left:20px ">SENTENCE COMPLETION</a><br><br><br>

    <a href="#" class="links" style="padding-right:38px;padding-left:38px ">TEXT EQUIVALENCE</a><br><br><br>
    
    <a href="vocab.jsp" class="links" style=" padding-right:26px;padding-left:26px ">VOCABULARY SECTION</a><br><br><br>
    
    <a href="StudentHome.jsp" class="links" style="padding-right:89px;padding-left:89px ">HOME</a><br><br><br>
    
   <a href="logout" class="links" style="padding-right:80px;padding-left:80px ">LOG-OUT</a><br><br><br>
         </center>  
   </div>
        
    </body>
</html>
