<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>

<link rel="stylesheet"
  href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
  crossorigin="anonymous">
</head>
<style>
fieldset label {
  font-size: 20px;
}

.btn-xl {
  padding: 5px 30px;
  font-size: 20px;
  border-radius: 10px;
}
</style>
<body>
  <%@include file="header.jsp"%>
  <div class="container" style="margin-left: 20%; padding-top: 5%">
    <div class="card"
      style="background-color: #F3F3F3; border-radius: 15px 15px 15px 15px; box-shadow: 0 0 20px rgba(0, 0, 0, .15)">
      <div class="card-body">
        <c:if test="${user != null}">
          <form action="updateveichleBook" method="post">
        </c:if>
        <c:if test="${user == null}">
          <form action="insertveichleBook" method="post">
        </c:if>

        <caption>
          <h2
            style="margin-left: 36%; font-size: 40px; font-weight: bold; color: #012840; margin-top: 20px">
            <c:if test="${user != null}">
                  Edit Veichle Booking
                </c:if>
            <c:if test="${user == null}">
                  Add New Veichle Booking
                </c:if>
          </h2>
        </caption>

        <c:if test="${user != null}">
          <input type="hidden" name="id" value="<c:out value='${user.id}' />" />
        </c:if>

        <fieldset class="form-group">
          <label>User Name</label> <input type="text"
            value="<c:out value='${user.user}' />" class="form-control"
            name="user" required="required" placeholder="Amigos">
        </fieldset>

        <fieldset class="form-group">
          <label> Nic</label> <input type="text"
            value="<c:out value='${user.nic}' />" class="form-control"
            name="nic"required="required" pattern="^[0-9+]{9}[vV|xX]$" placeholder="845520247X">
        </fieldset>

        <fieldset class="form-group">
          <label> Mobile </label> <input type="text"
            value="<c:out value='${user.mobile}' />" class="form-control"
            name="mobile"required="required" placeholder="077XXXXXXX" pattern="[0-9]{10}">
        </fieldset>
        <fieldset class="form-group">
          <label> Email</label> <input type="text"
            value="<c:out value='${user.email}' />" class="form-control"
            name="email" required="required" placeholder="amigos@gmail.com" pattern="[a-zA-Z0-9._%+-]+@[a-zA-Z0-9]+\.[a-z]{2,5}">
        </fieldset>

        <fieldset class="form-group">
          <label> Check In</label> <input type="text"
            value="<c:out value='${user.checkin}' />" class="form-control"
            name="checkin"required="required" placeholder="YYYY/MM/DD">
        </fieldset>

        <fieldset class="form-group">
          <label> Requsted Km</label> <input type="text" min="0"
            value="<c:out value='${user.km}' />" class="form-control"
            name="km"required="required" placeholder="Amigos" pattern="^\+?(0|[1-9]\d*)$">
        </fieldset>
        <fieldset class="form-group">
          <label> cost</label> <input type="text"
            value="<c:out value='${user.cost}' />" class="form-control"
            name="cost"required="required" placeholder="10000" />
        </fieldset>

        <div class="container text-right" style="margin-top: 50px">

          <button type="submit" class="btn-xl btn-success">Submit</button>
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