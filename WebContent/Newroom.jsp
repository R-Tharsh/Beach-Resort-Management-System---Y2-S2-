<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
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

	<%@include file="header.jsp"%>
	<div class="container" style="margin-left: 20%; padding-top: 5%"
		>
		<div class="card" style="background-color:#F3F3F3; border-radius:15px 15px 15px 15px; box-shadow:0 0 20px rgba(0, 0, 0, .15)">
			<div class="card-body">
				<c:if test="${user != null}">
					<form action="updateroom" method="post">
				</c:if>
				<c:if test="${user == null}">
					<form action="insertroom" method="post" enctype="multipart/form-data">
				</c:if>

				<caption>
					<h2 style="margin-left: 36%;font-size: 40px; font-weight:bold;color:#012840; margin-top: 20px">
						<c:if test="${user != null}">
            			Edit Room
            		</c:if>
						<c:if test="${user == null}">
            			Add New Room
            		</c:if>
					</h2>
				</caption>

				<c:if test="${user != null}">
					<input required=required type="hidden" name="id" value="<c:out value='${user.id}' />" />
				</c:if>

				<fieldset class="form-group">
					<label> Room Type</label> <input type="text"
						value="<c:out value='${user.roomtype}' />" class="form-control"
						name="roomtype" required="required">
				</fieldset>

				<fieldset class="form-group">
					<label> No Of Beds</label> <input type="text" required=required
						value="<c:out value='${user.nobeds}' />" class="form-control"
						name="nobeds">
				</fieldset>

				<fieldset class="form-group">
					<label> Facilities</label> <input type="text" required=required
						value="<c:out value='${user.facilities}' />" class="form-control"
						name="facilities">
				</fieldset>
				<fieldset class="form-group">
					<label> Cost Per Day</label> <input type="text" required=required
						value="<c:out value='${user.cost}' />" class="form-control"
						name="cost" required="required">
				</fieldset>

				<fieldset class="form-group">
					<label> Image</label> <input type="file" class="form-control" required=required
						name="file" >
				</fieldset>
				<div class="container text-right" style="margin-top:50px">
				
				<button type="submit" class="btn-xl btn-success" >Submit</button>
				</div>
				</form>
			</div>
		</div>
		<br>
		<br>
		<br>
	</div>
</body>
</html>