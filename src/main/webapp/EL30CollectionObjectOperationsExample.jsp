<!-- 
/*
 * COPYRIGHT LICENSE: This information contains sample code provided in source
 * code form. You may copy, modify, and distribute these sample programs in any 
 * form without payment to IBM for the purposes of developing, using, marketing 
 * or distributing application programs conforming to the application programming 
 * interface for the operating platform for which the sample code is written. 
 * 
 * Notwithstanding anything to the contrary, IBM PROVIDES THE SAMPLE SOURCE CODE 
 * ON AN "AS IS" BASIS AND IBM DISCLAIMS ALL WARRANTIES, EXPRESS OR IMPLIED, INCLUDING, 
 * BUT NOT LIMITED TO, ANY IMPLIED WARRANTIES OR CONDITIONS OF MERCHANTABILITY, 
 * SATISFACTORY QUALITY, FITNESS FOR A PARTICULAR PURPOSE, TITLE, AND ANY WARRANTY OR 
 * CONDITION OF NON-INFRINGEMENT. IBM SHALL NOT BE LIABLE FOR ANY DIRECT, INDIRECT,
 * INCIDENTAL, SPECIAL OR CONSEQUENTIAL DAMAGES ARISING OUT OF THE USE OR
 * OPERATION OF THE SAMPLE SOURCE CODE. IBM HAS NO OBLIGATION TO PROVIDE
 * MAINTENANCE, SUPPORT, UPDATES, ENHANCEMENTS OR MODIFICATIONS TO THE SAMPLE
 * SOURCE CODE.
 * 
 * (C) Copyright IBM Corp. 2015.
 * 
 * All Rights Reserved. Licensed Materials - Property of IBM.  
 */
-->

<%@ page import="java.util.Collection"%>
<%@ page import="java.util.List"%>
<%@ page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8"></meta>
<title>EL 3.0 Operations on Collection Objects</title>
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
<div class="big"> EL 3.0 Operations on Collection Objects</div>
</div>
<div class="frm2"> 

</div>
</head>
<body>
<h2>This page will demonstrate various operations on collection objects in EL 3.0.</h2>
	<% 
		// List to be used as a collection object
		List<Integer> list = new ArrayList<Integer>() {
        	{
            	add(1);
            	add(4);
           		add(3);
            	add(2);
            	add(5);
            	add(3);
            	add(1);
        	}
    	};
		
		request.setAttribute("list", list);
		request.setAttribute("out", out);		
	 %>
	
	Below are various EL 3.0 operations on a List object:
	<p>
		<b>Original List: ${list}</b>
	</p>
	<br><br>
	<p>
		filter example: ${list.stream().filter(e -> e >= 3).toList()}
	</p>
	<p>	
		map example: ${list.stream().map(e -> e + 2).toList()}
	</p>
	<p>	
		flatMap example: ${[[1, 4], [3], [2], [5, 3, 1]].stream().flatMap(e -> e.stream()).toList()}
	</p>
	<p>	
		distinct example: ${list.stream().distinct().toList()}
	</p>
	<p>	
		sorted example in decreasing order: ${list.stream().sorted((i, j) -> j-i).toList()}
	</p>
	<p>	
		forEach example: ${list.stream().forEach(e -> out.print(e))}
	</p>
	<p>	
		limit example that will limit to the first 3 entries in the list: ${list.stream().limit(3).toList()}
	</p>
	<p>	
		substream example: ${list.stream().substream(2, 4).toList()}
	</p>
	<p>	
		reduce example that will get the largest number in the list: ${list.stream().reduce((p, q) -> p > q ? p:q).get()}
	</p>
	<p>	
		max example: ${list.stream().max().get()}
	</p>
	<p>	
		min example: ${list.stream().min().get()}
	</p>
	<p>	
		average example: ${list.stream().average().get()}
	</p>
	<p>	
		sum example: ${list.stream().sum()}
	</p>
	<p>
		count example: ${list.stream().count()}
	</p>
	<p>
		anyMatch example which will show if any elements are less than 2: ${list.stream().anyMatch(e -> e < 2).orElse(false)}
	</p>
	<p>
		allMatch example which will show if all elements are less than 4: ${list.stream().allMatch(e -> e < 4).orElse(false)}
	</p>
	<p>
		noneMatch example which will show if none of the elements are greater than 5: ${list.stream().noneMatch(e -> e > 5).orElse(false)}
	</p>
	<p>
		findFirst that will get the first element in the list: ${list.stream().findFirst().get()}
	</p>
	<p>	
		<a href="index.jsp">Return to the main page</a>
	</p>	
</body>
</html>