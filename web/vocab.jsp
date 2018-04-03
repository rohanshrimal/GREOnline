<%-- 
    Document   : vocab
    Created on : 13 Dec, 2016, 11:07:37 PM
    Author     : rohan
--%>

<%@page import="dao.UserCatDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:useBean id="am" scope="session" class="model.AlphaModel"/>
<jsp:useBean scope="session" id="user" class="model.userModel"/>
<%am.setFamily(null);%>

<jsp:useBean id="ucm" scope="session" class="model.userCatModel"/>
<%--<jsp:setProperty name="ucm" property="userID" value="<%=((model.userModel)session.getAttribute("user")).getUserID()%>"/>--%>
<%
ucm.setUserID(((model.userModel)session.getAttribute("user")).getUserID());
UserCatDao ucd=new UserCatDao();
ucd.getCategoryNo(ucm,application);
ucd.getCount(ucm,application, session);
session.setAttribute("MaxCounter",ucm.getCategory());
%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>VOCABULARY SECTION</title>
        <link rel="stylesheet" type="text/css" href="grestyleing.css">
        <link href='https://fonts.googleapis.com/css?family=Roboto:400,700,300|Material+Icons' rel='stylesheet' type='text/css'>
        
    </head>
    <body>
        <div class="heading">VOCABULARY SECTION</div>
        <div style="color:#f44336; font-size:30px; display: inline;padding-right: 20px ; margin-right:20px">USERNAME : <jsp:getProperty name="user" property="firstName"/> <jsp:getProperty name="user" property="lastName"/></div><div style="color: #f44336; font-size: 30px;display: inline;float: right;padding-right: 20px">WORD COUNT : <%=session.getAttribute("wc")%></div>
        <br><br><br>
         <div style="width:250px">
             <center>
    <a href="words.jsp" class="links" style="padding-right:39px ;padding-left:39px">NEW WORDS</a><br><br><br>

    <a href="Revision.jsp" class="links" style="padding-right:50px ;padding-left:50px">REVISION</a><br><br><br>
    
    <a href="SearchWords.jsp" class="links" style="padding-right:25px ;padding-left:25px">SEARCH WORDS</a><br><br><br>
    
    <a href="StudentHome.jsp" class="links" style="padding-right:62px ;padding-left:62px">HOME</a><br><br><br>

    <a href="logout" class="links" style="padding-right:52px ;padding-left:52px">LOG-OUT</a><br><br><br>
             </center>
         </div>
    </body>
</html>
