<%-- 
    Document   : words
    Created on : 14 Dec, 2016, 2:52:36 PM
    Author     : rohan
--%>

<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.userModel" %>
<%@page import="dao.UserCatDao"%>
<!DOCTYPE html>

<jsp:useBean id="ucm" scope="session" class="model.userCatModel"/>

<%
if(request.getParameter("word")!=null)
{
    ucm.setCategory((Integer.parseInt(request.getParameter("categoryNo")))-1);
}
    
UserCatDao ucd=new UserCatDao();
ucd.synonym(ucm,application);
ArrayList Synonym=ucm.getSynonym();
ArrayList Meaning=ucm.getMeaning();
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="grestyleing.css">
        <link href='https://fonts.googleapis.com/css?family=Roboto:400,700,300|Material+Icons' rel='stylesheet' type='text/css'>
        <title>VOCABULARY</title>
        <style>
            .mainword{
             font-size : 60px; 
             border: 1px solid #f44336; 
             color:#f44336; 
             width: 750px;
             padding: 20px;
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
        <div class="heading">LEARN WORDS</div><br>
    <center>
        <span id="synCount" class="count sc">SYNONYM - COUNT : </span> 
        <span>
        <a href="vocab.jsp" class="links">VOCAB-SECTION</a> 

        <a href="verbal.jsp" class="links">VERBAL-SECTION</a>  
        </span>
        <span class="count wc">WORD - COUNT : <%=session.getAttribute("wc")%></span>
    </center>
        <br><br><br>
        <center>
        <form action="NextWord">
        <div class="mainword" align="center"><%=Synonym.get(0)%></div>
        <div style="border: 1px solid #f44336; padding: 20px; border-top:0px ;width: 750px" >
            <h1 align="left" style="color: #f44336">MEANING   :</h1>
            <div style="font-size : 20px; color: #f44336" align="left"><%=Meaning.get(0)%></div>
            
            <h1 align="left" style="color: #f44336">SYNONYMS  :</h1><div style="font-size : 15pt">
                <center>
            <table style="border: 1px">
            <% for(int i=1;i<Synonym.size();i++){%>
        
            <span class="synonym"><tr><td><%=i+"."%></td><td><%=(String)Synonym.get(i)%></td><td><%=Meaning.get(i)%></td></tr></div>      
         
            <%}%>
          
        </table>
                </center>
        </div>
        <br><br>
     <center><input type="submit" name="submit" value="PREVIOUS CATEGORY" style="width: auto"/>  <input type="submit" name="submit" value="NEXT CATEGORY" onclick="return AreYouSure()" style="width: auto"/></center>
        </div>
        </form>
        </center>
        <br><br>
    <script>
    function AreYouSure()
    {
        if (confirm("Have You Learnt All The Words of This Category...???")) 
        {
            return true;
        } 
        else 
        {
            return false;
        }
    }
    
    getSynonymCount();
    
    function getSynonymCount()
    {
        var synonym=document.getElementsByClassName("synonym");
        var synonymCount=synonym.length;
        document.getElementById("synCount").innerHTML=document.getElementById("synCount").innerHTML + synonymCount +"  ";
    }
    </script>
    </body>
</html>
