<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Report</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
	<style>
  
  .table{
  border-collapse: collapse;
  min-width:400px;
  border-radius:15px 15px 15px 15px;
  overflow:hidden;
  box-shadow:0 0 20px rgba(0, 0, 0, .15);
  background-color:#fff;
  }

tbody tr:nth-of-type(even){
  background-color:#F3F3F3;
  color: #012840;
  font-weight:500;
}
tbody tr:last-of-type{
  border-bottom:2px solid #012840;
}

</style>
      
      <link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
        <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
        <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
        <script>
            $(function () {
                $("#sdatepicker").datepicker({ dateFormat: 'yy-mm-dd' });
                $("#edatepicker").datepicker({ dateFormat: 'yy-mm-dd' });
            });
        </script>
        <script type="text/javascript">
        function validate(){
        	var sdate = document.getElementById("sdatepicker");
        	var edate = document.getElementById("edatepicker");
            if (sdate.value == "") { 
            	 alert ("Please Pick A Start Date");
            	 return false;
            }
            
            else if (edate.value == "") { 
           	 alert ("Please Pick An End Date");
           	 return false;
           }
            
            else{
            	alert ("Results Ready");
            	return true;
            }
        }
        
        </script>
        
         <style>
fieldset label {
font-size: 20px; 
}

.btn-xl{
padding:5px 30px;
font-size:20px;
border-radius: 10px;
}
</style>
	
</head>
<body>

	<header>
		<nav class="navbar navbar-expand-md navbar-dark"
			style="background-color: #012840; padding: 20px;">
			<div>
				<a href="index.jsp" class="navbar-brand"> Accounts </a>
			</div>

			<ul class="navbar-nav">
				<li><a href="ViewExpense.jsp"
					class="nav-link">  View Expenses</a></li>
			</ul>
			
			<ul class="navbar-nav">
				<li><a href="Expense.jsp"
					class="nav-link"> Add Expenses</a></li>
			</ul>
			
			<ul class="navbar-nav">
				<li><a href="ViewIncome.jsp"
					class="nav-link"> View Incomes </a></li>
			</ul>
			
			<ul class="navbar-nav">
				<li><a href="Income.jsp"
					class="nav-link"> Add Income</a></li>
			</ul>
			 
			
			<ul class="navbar-nav">
				<li><a href="Report.jsp"
					class="nav-link"> Reports </a></li>
			</ul>
		</nav>
	</header>
	
	<div class="container" style="margin-left: 20%; padding-top: 5%">
		<div class="card" style="background-color:#F3F3F3; border-radius:15px 15px 15px 15px; box-shadow:0 0 20px rgba(0, 0, 0, .15)">
			<div class="card-body">

<form action = "SelectExpense" method = "post">

	<fieldset>
		<lable>From</lable> <br> <input type = "text" name = "sDate" id = "sdatepicker" class="form-control"> <br>
		</fieldset>
		
		<fieldset>
		<lable>To </lable><br> <input type = "text" name = "eDate" id = "edatepicker" class="form-control"> <br><br>
		</fieldset>
	
	<button type ="submit" name = "submit" onClick = "return validate();" class="btn-xl btn-info">Generate Report</button>
	
	</form> 
	</div>
	</div>
	</div>
	
	
	<div class="container" style="margin-left: 20%; padding-top: 5%">
		<div class="card" style="background-color:#F3F3F3; border-radius:15px 15px 15px 15px; box-shadow:0 0 20px rgba(0, 0, 0, .15)">
			<div class="card-body">
	<table>
	<tr>
	<th style="text-align:center; width:200px">Division </th>
	<th style="text-align:center; width:200px">Income</th>
	<th style="text-align:center; width:200px">Expense</th>
	</tr>
	
	<tr>
	<td style="text-align:left">Resort Rooms</td>
	</tr>
	
	<tr>
	<td style="text-align:left">Event</td>
	</tr>
	
	<tr>
	<td style="text-align:left">Restaurant</td>
	</tr>
	
	<tr>
	<td style="text-align:left">Transport</td>
	</tr>
	
	<tr>
	<td style="text-align:left">Other</td>
	</tr>
	
	<tr>
	<td style="text-align:left">Total</td>
	</tr>
	
	</table>
	</div>
	</div>
	</div>
	
	
	
</body>
</html>