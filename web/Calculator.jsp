<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="grestyleing.css">
        <link href='https://fonts.googleapis.com/css?family=Roboto:400,700,300|Material+Icons' rel='stylesheet' type='text/css'>
        <title>Marks Calculator</title>
    </head>
    <body>
        <div class="heading">CALCULATOR</div><br>
    <center>
        <a href="StudentHome.jsp"  class="links">STUDENT HOME</a>
        <a href="logout"  class="links">LOG-OUT</a>
        
    </center>   
    <br>
   
        <center>
            <textarea readonly class="screen" rows="3" cols="19" id="outputScreen"></textarea><br>
        <input type="button" class="calculator" value="C" onclick="clearDisplay()"/><input type="button" class="calculator" value="/" onclick="display(this.value)"/><input type="button" class="calculator" value="*" onclick="display(this.value)"/><input type="button" class="calculator" value="+" onclick="display(this.value)"/><br>    
        <input type="button" class="calculator" value="7" onclick="display(this.value)"/><input type="button" class="calculator" value="8" onclick="display(this.value)"/><input type="button" class="calculator" value="9" onclick="display(this.value)"/><input type="button" class="calculator" value="-" onclick="display(this.value)"/><br>
        <input type="button" class="calculator" value="4" onclick="display(this.value)"/><input type="button" class="calculator" value="5" onclick="display(this.value)"/><input type="button" class="calculator" value="6" onclick="display(this.value)"/><input type="button" class="calculator" value=")" onclick="display(this.value)"/><br>
        <input type="button" class="calculator" value="1" onclick="display(this.value)"/><input type="button" class="calculator" value="2" onclick="display(this.value)"/><input type="button" class="calculator" value="3" onclick="display(this.value)"/><input type="button" class="calculator" value="(" onclick="display(this.value)"/><br>
        <input type="button" class="calculator" value="0" onclick="display(this.value)"/><input type="button" class="calculator" value="." onclick="display(this.value)"/><input type="button" class="calculator" value="%" onclick="display(this.value)"/><input type="button" class="calculator" value="=" onclick="calculate()"/>
        </center>
    <script type="text/javascript">
        function clearDisplay()
        {
            document.getElementById("outputScreen").innerHTML="";
        }
        function display(value)
        {
            document.getElementById("outputScreen").innerHTML=document.getElementById("outputScreen").innerHTML+value;
        }
        function calculate()
        {
            var expr=document.getElementById("outputScreen").innerHTML;
            document.getElementById("outputScreen").innerHTML=eval(expr);
        }
    </script>
    </body>
   
</html>
