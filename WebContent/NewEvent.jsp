<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	
	crossorigin="anonymous">
<style>
fieldset label {
font-size: 20px; 
}

div label {
font-size: 20px; 
}

.btn-xl{
padding:5px 30px;
font-size:20px;
border-radius: 10px;
}

.label-text1{
width:1065px;
height:35px;
}
</style>
</head>
<body>
<%@include file="header.jsp" %>
		<div class="container" style="margin-left: 20%; padding-top:5%">
		<div class="card" style="background-color:#F3F3F3; border-radius:15px 15px 15px 15px; box-shadow:0 0 20px rgba(0, 0, 0, .15)">
			<div class="card-body">
				<c:if test="${user != null}">
					<form action="updateevent" method="post">
				</c:if>
				<c:if test="${user == null}">
					<form action="insertevent" method="post">
				</c:if>

				<caption>
					<h2 style="margin-left: 36%;font-size: 40px; font-weight:bold;color:#012840; margin-top: 20px">
						<c:if test="${user != null}">
            			Edit Event
            		</c:if>
						<c:if test="${user == null}">
            			Add Event
            		</c:if>
					</h2>
				</caption>
				

				<c:if test="${user != null}">
					<input type="hidden" name="id" value="<c:out value='${user.id}' />" />
				</c:if>
				

				<fieldset class="form-group">
					<label> Guest Name</label> <input type="text"
						value="<c:out value='${user.guest}' />" class="form-control"
						name="guest" required="required">
				</fieldset>

				<fieldset class="form-group">
					<label> Mobile</label> <input type="text"
						value="<c:out value='${user.mobile}' />" class="form-control"
						name="mobile" pattern="[0-9]{9}" required="required">
				</fieldset>
				
				<div class="form-group">
				<label> Events</label>
                            <div >
                                <select  class="label-text1" name="eventname"  required>
                                    <option value="${user.eventname}">Choose Event</option>
                                    <option value="Wedding">Wedding</option>
                                    <option value="Birthday Party">Birthday Party</option>
                                     <option value="Ceremony">Ceremony</option>
                                    <option value="Conference Meet">Conference Meet</option>
                                  
                                </select>
                            </div>
                        </div>

		  <fieldset class="form-group">
          <label> Facilities</label> <input type="text"
            value="<c:out value='${user.facilities}' />" class="form-control"
            name="facilities" required="required">
        </fieldset>

				<fieldset class="form-group">
					<label> Date</label> <input type="date"
						value="<c:out value='${user.date}' />" class="form-control"
						name="Date" required="required">
				</fieldset>

				

								<div class="container text-right" style="margin-top:50px">
				
				<button type="submit" class="btn-xl btn-success" >Submit</button>
				</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>