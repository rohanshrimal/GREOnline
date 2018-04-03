
<jsp:useBean scope="session" id="user" class="model.userModel"/>
<html>
<head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="grestyleing.css">
        <link href='https://fonts.googleapis.com/css?family=Roboto:400,700,300|Material+Icons' rel='stylesheet' type='text/css'>
        
        <title>GRE - ONLINE</title>
      
</head>
<body>    
    <div class="heading">G R E- O N L I N E</div><br> 
    <div style="color:#f44336; font-size:30px; display: inline;padding-right: 20px ; margin-right:20px">USERNAME : <jsp:getProperty name="user" property="firstName"/> <jsp:getProperty name="user" property="lastName"/></div>
    <br><br><br>
    <div style="width:250px">
        <center>
        <a href="verbal.jsp" class="links" style="padding-left:32px; padding-right:30px">VERBAL</a><br><br><br><br>

        <a href="#" class="links" style="padding-left:34px; padding-right:33px">QUANT</a><br><br><br><br>

        <a href="Calculator.jsp" class="links" style="padding-left:10px; padding-right:12px">CALCULATOR</a><br><br><br><br>

        <a href="logout" class="links" style="padding-left:30px; padding-right:30px">LOGOUT</a><br><br><br><br>
        </center>
    </div>
</body>
</html>
