<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import ="java.lang.*" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8"></meta>
<title>Lambda Expressions in EL 3.0</title>
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
<div class="big"> Lambda Expressions in EL 3.0</div>
</div>
<div class="frm2"> 


</div>
</head>
<body>
	<h2>This page will demonstrate various uses of lambda expressions in EL 3.0.</h2>
	<p>			
		A single parameter lambda expression with the syntax: <b>\${(x->x+1)(8)}</b> evaluates to: ${(x->x+1)(8)}		
	</p>

	<p>			
		A multiple parameter lambda expression with the syntax <b>\${((x,y)->x+y)(8,9)}</b> evaluates to: ${((x,y)->x+y)(8,9)}
	</p>		
	
	<p>	
		A lambda expression can also have no parameters.  For example, this syntax <b>\${()->100}</b> evaluates to: ${()->100}
	</p>
	
	<p>		
		A lambda expression can also be used for assignment.  For example, <b>\${incr =(x->x+1)(8)}</b> evaluates to: ${incr =(x->x+1)(8)}		
	</p>	
	
	<p>
		A lambda expression can use the assignment and be invoked indirectly.  For example: <b>\${test = x->x+1; test(10)}</b> evaluates to: ${test = x->x+1; test(10)}
	</p>
	
	<p>			
		<jsp:useBean id="employee" class="com.ibm.ws.samples.el30.Employee" scope="request">
			<jsp:setProperty  name="employee" property="firstname" value="John" />
			<jsp:setProperty  name="employee" property="lastname" value="Doe" />
		</jsp:useBean>	
		A lambda expression can be passed as an argument to a method. For example: <b>\${employee.firstname} \${employee.sanitizeNames(e->e.firstname == 'John')};</b>
		<br>
		${employee.firstname} ${employee.sanitizeNames(e->e.firstname == 'John')};
	</p>
	<p>	
		<a href="index.jsp">Return to the main page</a>
	</p>
</body>
</html>