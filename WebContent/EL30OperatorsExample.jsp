<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import ="java.lang.*" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8"></meta>
<title>EL 3.0 Operators</title>
<style>
.frm1{padding: 15px;background-color: #9666af; margin-bottom: 10px;}
.frm2{padding-left: 25px; font-family: Verdana; color: #440055;}
.big{font-size: 26px; color: white;}
.small{font-size: 12px;}
button, select{padding: 5px; padding-left: 20px; padding-right: 20px; margin:10px; width: 270px}
</style>
</head>
<body>
<div class="frm1">
<div class="big"> EL 3.0 Operators</div>
</div>
<div class="frm2"> 


</div>
</head>
<body>
	<h2>This page will demonstrate various uses of operators in EL 3.0.</h2>
    <h4>Note: this page should be called with a query string of ?sampleParam1=1&sampleParam2=2</h4>
	
    <p>
        A simple string concatenation operator (+=) example <b>\${"x" += "y"}</b> evaluates to: ${"x" += "y"}
    <p/>
	<p>
        Another simple string concatenation operator example with the use of the request parameters <b>\${param.sampleParam1 += param.sampleParam2}</b> evaluates to: ${param.sampleParam1 += param.sampleParam2}
	</p>
	<p>
		An assignment operator (=) <b>\${x=3}</b> evaluates to: ${x=3}
    </p>
	<p>
        Since "x" was just assigned a value of 3 above, we can use that in other expressions.  For example, <b>\${y=x+5}</b> evaluates to: ${y=x+5}
    </p>
	<p>
		An example of the semi-colon operator, <b>\${x = 5; y = 3; z = x + y}</b> evaluates to: ${x = 5; y = 3; z = x + y}
    </p>
	<p>	
		<a href="index.jsp">Return to the main page</a>
	</p>
</body>
</html>