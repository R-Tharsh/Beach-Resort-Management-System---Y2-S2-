<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome To Admin Dashboard</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
</head>
<body style="background-color: #F3F3F3">

	
	<%@include file="header.jsp"%>
	
	 <div class="container" style="margin-left: 20%; padding-top: 5%">
    <h3 class="text-center" style="margin-left:20px;font-size:50px; font-weight:bold">Accounts</h3>
    <hr style="width:1050px; border:2px solid #fff">
		<div class="container text-center">

			<a href="<%=request.getContextPath()%>/ViewExpense.jsp"
				class="btn btn-success" style="margin-left:-10px; margin-top:20px; border-radius:12px; font-size:20px;">View Expense</a>
		</div>
		<br><br>
		
		<div class="container text-center">

			<a href="<%=request.getContextPath()%>/Expense.jsp"
				class="btn btn-success" style="margin-left:-10px; margin-top:20px;  border-radius:12px; font-size:20px;">Add Expense</a>
		</div>
		<br><br>
		
		<div class="container text-center">

			<a href="<%=request.getContextPath()%>/ViewIncome.jsp"
				class="btn btn-success" style="margin-left:-10px; margin-top:20px;  border-radius:12px; font-size:20px;">View Income</a>
		</div>
		<br><br>
		
		<div class="container text-center">

			<a href="<%=request.getContextPath()%>/Income.jsp"
				class="btn btn-success" style="margin-left:-10px; margin-top:20px;  border-radius:12px; font-size:20px;">Add Income</a>
		</div>
		<br><br>
		
		<div class="container text-center">

			<a href="<%=request.getContextPath()%>/Report.jsp"
				class="btn btn-success" style="margin-left:-10px; margin-top:20px;  border-radius:12px; font-size:20px;">Report</a>
		</div>
		<br><br><br><br><br><br>
		
</body>
</html>