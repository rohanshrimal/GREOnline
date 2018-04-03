<%-- 
    Document   : ReadWords
    Created on : 14 Mar, 2018, 12:27:23 PM
    Author     : rohan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Read Words</title>
        <link rel="stylesheet" type="text/css" href="grestyleing.css">
        <link href='https://fonts.googleapis.com/css?family=Roboto:400,700,300|Material+Icons' rel='stylesheet' type='text/css'>
         <style>
             table {
                border-collapse: collapse;
                width:1200px;
                font-size: 20px
            }

            th,td {
                border: 1px solid #f44336;  
                text-align: left;
                padding: 10px;
                width:auto;
                color: #f44336;
            }
            .head{
                background-color: #f44336;
                color: white;
                padding:15px;
            }
    
           

        </style>
    </head>
    <body>
        <div class="heading">WORD LIST</div><br>
    <center>
        <table id="wordList">
        </table>
    </center>
        <script>
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

        function getWords()
        {
            request=getXmlHttpRequestObject();
            request.onreadystatechange=setWords;
            request.open("get","words.xml",true);
            request.setRequestHeader ("Content-Type", "application/x-www-form-urlencoded");
            request.send(null);
        }
        function setWords()
        {
            console.log(request.responseText);
             if(request.readyState===4 && request.status===200)
            {
                var parser = new DOMParser();
                var words = parser.parseFromString(request.responseText,"text/xml");
                var mw=words.getElementsByTagName("main-word");
                var bm=words.getElementsByTagName("broad-meaning");
                
               var setString="<td class='head'>WORD</td>"+"<td class='head'>MEANING</td>";
                for (i = 0; i< mw.length; i++) 
                {
                    
                    var w="<td>"+mw[i].childNodes[0].nodeValue+"</td>";
                    var m="<td>"+bm[i].childNodes[0].nodeValue+"</td>";
                    setString=setString+"<tr>"+w+m+"</tr>";
                    document.getElementById("wordList").innerHTML=setString;
                }
            }
        }
        getWords();
    </script>
    
    </body>
</html>
