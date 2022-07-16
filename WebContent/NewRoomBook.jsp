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
<script type="text/javascript">
function updatedate() {
    var firstdate = document.getElementById("checkin").value;
    document.getElementById("checkout").value = "";
    document.getElementById("checkout").setAttribute("min",firstdate);
  }
</script>
<%@include file="header.jsp" %>
		<div class="container" style="margin-left: 20%; padding-top:5%;">
		<div class="card" style="background-color:#F3F3F3; border-radius:15px 15px 15px 15px; box-shadow:0 0 20px rgba(0, 0, 0, .15)">
			<div class="card-body">
				<c:if test="${user != null}">
					<form action="updateRoomBook" method="post">
				</c:if>
				<c:if test="${user == null}">
					<form action="insertRoomBook" method="post">
				</c:if>

				<caption>
					<h2 style="margin-left: 36%;font-size: 40px; font-weight:bold;color:#012840; margin-top: 20px">
						<c:if test="${user != null}">
            			Edit Booking
            		</c:if>
						<c:if test="${user == null}">
            			Reserve Room
            		</c:if>
					</h2>
				</caption>

				<c:if test="${user != null}">
					<input type="hidden" name="id" value="<c:out value='${user.id}' />" />
				</c:if>
				<br>
				<br>
				<fieldset class="form-group">
					<label> Customer Name</label> <input type="text"
						value="<c:out value='${user.user}' />" class="form-control"
						name="user" required="required">
				</fieldset>

				<fieldset class="form-group">
					<label> NIC</label> <input type="text"
						value="<c:out value='${user.nic}' />" class="form-control"
						name="nic" pattern="^([0-9]{9}[v|V]|[0-9]{12})$" required="required">
				</fieldset>

				<fieldset class="form-group">
					<label> Mobile No</label> <input type="text"
						value="<c:out value='${user.mobile}' />" class="form-control"
						name="mobile" pattern="[0]{1}[1-9]{2}[0-9]{3}[0-9]{4}" required="required">
				</fieldset>
				<fieldset class="form-group">
					<label> Email</label> <input type="text"
						value="<c:out value='${user.email}' />" class="form-control"
						name="email" pattern="[a-zA-Z0-9._%+-]+@[a-zA-Z0-9]+\.[a-z]{2,5}" required="required">
				</fieldset>
				
				<fieldset class="form-group">
					<label>Check In</label> <input type="date" id="checkin" 
						value="<c:out value='${user.checkin}' />" class="form-control"
						name="checkin" onchange="updatedate();" required="required">
				</fieldset>

				<fieldset class="form-group">
					<label> Check Out</label> <input type="date" id="checkout" min=""
						value="<c:out value='${user.checkout}' />" class="form-control"
						name="checkout">
				</fieldset>

				<fieldset class="form-group">
					<label> No of Rooms</label> <input type="text"
						value="<c:out value='${user.noofrooms}' />" class="form-control"
						name="noofrooms">
				</fieldset>
				<fieldset class="form-group">
					<label> Total Members</label> <input type="text"
						value="<c:out value='${user.members}' />" class="form-control"
						name="members" required="required">
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