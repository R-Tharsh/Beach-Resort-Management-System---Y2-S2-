<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	crossorigin="anonymous">
</head>
<body>
	<%@include file="header.jsp"%>
	<div class="container" style="margin-left: 20%; padding-top: 5%">
		<div class="card" style="background-color:#F3F3F3; border-radius:15px 15px 15px 15px; box-shadow:0 0 20px rgba(0, 0, 0, .15)">
			<div class="card-body">
				<c:if test="${user != null}">
					<form action="update" method="post">
				</c:if>
				<c:if test="${user == null}">
					<form action="insert" method="post" enctype="multipart/form-data">
				</c:if>

				<caption>
					<h2 style="margin-left: 36%;font-size: 40px; font-weight:bold;color:#012840; margin-top: 20px">
						<c:if test="${user != null}">
            			Edit Supply
            		</c:if>
						<c:if test="${user == null}">
            			Add New Supply
            		</c:if>
					</h2>
				</caption>

				<c:if test="${user != null}">
					<input type="hidden" name="id" value="<c:out value='${user.id}' />" />
				</c:if>

				<fieldset class="form-group">
					<label> Supply Name</label> <input type="text"
						value="<c:out value='${user.inventoryname}' />"
						class="form-control" name="inventoryname" required="required">
				</fieldset>

				<fieldset class="form-group">
					<label> Supplier Name</label> <input type="text"
						value="<c:out value='${user.suppliername}' />"
						class="form-control" name="suppliername">
				</fieldset>

				<fieldset class="form-group">
					<label> Supply Id</label> <input type="text"
						value="<c:out value='${user.supllierid}' />" class="form-control"
						name="supllierid">
				</fieldset>
				<fieldset class="form-group">
					<label> Supplier Date</label> <input type="text"
						value="<c:out value='${user.supplierdate}' />"
						class="form-control" name="supplierdate" required="required">
				</fieldset>

				<fieldset class="form-group">
					<label> Quantity</label> <input type="text"
						value="<c:out value='${user.quantity}' />" class="form-control"
						name="quantity" id="input2">
				</fieldset>

				<fieldset class="form-group">
					<label> Price</label> <input type="text"
						value="<c:out value='${user.price}' />" class="form-control"
						name="price" id="input1">
				</fieldset>


			


				<fieldset class="form-group">
					<label> <a href="javascript: void(0)" onClick="calc()">Calculate</a>Total
						Amount
					</label> <input type="number" name="total" id="output" value="<c:out value='${user.total}' />" >


				</fieldset>

				<fieldset class="form-group">
					<label> Image</label> <input type="file" class="form-control"
						name="file">

				</fieldset>
				<div class="container text-right" style="margin-top:50px">
				<button type="submit" class="btn btn-success">Submit</button></div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>
<script>
	$("#input2,#input1").keyup(function() {

		$('#output').val($('#input1').val() * $('#input2').val());

	});
</script>