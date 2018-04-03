<%-- 
    Document   : DoRevision
    Created on : 12 Mar, 2018, 4:14:55 PM
    Author     : rohan
--%>
<%@page import="java.util.ArrayList"%>
<%
ArrayList<String> synonyms=(ArrayList<String>)session.getAttribute("synonyms");
ArrayList<String> meanings=(ArrayList<String>)session.getAttribute("meanings");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Revision</title>
        <link rel="stylesheet" type="text/css" href="grestyleing.css">
        <link href='https://fonts.googleapis.com/css?family=Roboto:400,700,300|Material+Icons' rel='stylesheet' type='text/css'>
        <style>
            .dropdown{
                width:auto;
                height:50px;
                background-color: white;
                font-style: initial;
                font-family: Roboto;
                font-size: 20px;
                color: #f44336;
                border: 1px solid #f44336;
                padding: 10px;
                margin: 5px;
                text-align: center;
            }
            .mainword{
                width: 900px;
                height: 70px;
                font-style: initial;
                font-family: Roboto;
                font-size: 60px;
                text-align: center;
                background-color: #f44336;
                color: white;
                padding: 10px;
                border: 5px solid #f44336;
            }
            table {
                border-collapse: collapse;
                width:700px;
                font-size: 20px
            }

            td {
                border: 1px solid #f44336;
                text-align: left;
                padding: 10px;
            }

            tr:nth-child(even) {
                background-color: #f44336;
                color:white;
            }
            tr:nth-child(odd) {
                background-color: white;
                color: #f44336;
            }
        </style>
    </head>
    <body>
        <div class="heading">SEARCH WORDS HERE</div><br>
    <center>
        <a href="StudentHome.jsp" class="links" style="padding-right:50px;padding-left:50px ">HOME</a>
        <a href="logout" class="links" style="padding-right:41px;padding-left:40px ">LOG-OUT</a><br><br>
    </center>
    <center>
        <div style="font-size: 25px; display: inline">CHOOSE LETTER</div>
        <select id="letters" class="dropdown" onchange="getWords(this.value);">
            <option selected disabled></option>
        </select>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <div style="font-size: 25px; display: inline">SELECT WORDS</div>
        <select id="words" class="dropdown" onchange="getCategory(this.value)">
        </select>
    </center>
    
    <br>
    <center>
        <%if(synonyms!=null){%>
        <div class="mainword"><%=synonyms.get(0) %></div>
        <div style="width: 900px; height: auto;border: 2px solid #f44336; padding: 13px; padding-bottom: 130px" > 
            <div style="text-align: left;font-size: 25px;padding: 5px"><span>MEANING :</span></div>
            <div style="text-align: left;color:#f44336;font-size: 20px; padding: 5px"><%=meanings.get(0) %></div><br>
            <div style="text-align: left;font-size: 25px;padding: 5px"><span>SYNONYMS :</span></div>
            
            <table>
                <%for(int i=1;i<synonyms.size();i++){ %>
                <tr>
                    <td><%=synonyms.get(i)%></td>
                </tr>
                <%}%>
            </table>
        </div>
            <%}%>
    </center>
        <script type="text/javascript">
        for(i=0;i<26;i++)
        {
            document.getElementById("letters").innerHTML=document.getElementById("letters").innerHTML+"<option value= '"+String.fromCharCode(65+i)+"'>"+String.fromCharCode(65+i)+"</option>"
        }
	function getXmlHttpRequestObject()
	{
            var xmlHttpReq;

            if(window.XMLHttpRequest){
                request=new window.XMLHttpRequest();
            }
            else if(window.ActiveXObject){
                request=new window.ActiveXObject();
            }
            else{
                request=null;
            }
            return request;
	}
        
        function getWords(i)
	{   
            request=getXmlHttpRequestObject();
            request.onreadystatechange=setWords;
            request.open("post","GetWords",true);
            request.setRequestHeader ("Content-Type", "application/x-www-form-urlencoded");
            var data="letter="+i;
            request.send(data);
	}

	function setWords()
	{
            if(request.readyState===4 && request.status===200)
            {
		document.getElementById("words").innerHTML=request.responseText;
            }
        }
        
        function getCategory(i)
        {
            request=getXmlHttpRequestObject();
            request.onreadystatechange=setCategory;
            request.open("post","GetCategory",true);
            request.setRequestHeader ("Content-Type", "application/x-www-form-urlencoded");
            var data="category="+i;
            request.send(data);
        }
        function setCategory()
        {
             if(request.readyState===4 && request.status===200)
            {
                    location.reload();
            }
        }

        </script>
    </body>
</html>
