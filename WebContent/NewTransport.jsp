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

.btn-xl {
  padding: 5px 30px;
  font-size: 20px;
  border-radius: 10px;
}
</style>
</head>
<body>

  <%@include file="header.jsp"%>
  <div class="container" style="margin-left: 20%; padding-top: 5%">
    <div class="card"
      style="background-color: #F3F3F3; border-radius: 15px 15px 15px 15px; box-shadow: 0 0 20px rgba(0, 0, 0, .15)">
      <div class="card-body">
        <c:if test="${user != null}">
          <form action="updatetransport" method="post">
        </c:if>
        <c:if test="${user == null}">
          <form action="inserttransport" method="post"
            enctype="multipart/form-data">
        </c:if>

        <caption>
          <h2
            style="margin-left: 36%; font-size: 40px; font-weight: bold; color: #012840; margin-top: 20px">
            <c:if test="${user != null}">
                  Edit Package
                </c:if>
            <c:if test="${user == null}">
                  Add New Package
                </c:if>
          </h2>
        </caption>

        <c:if test="${user != null}">
          <input type="text" name="id" value="<c:out value='${user.id}' />" />
        </c:if>

        <fieldset class="form-group">
          <label>Veichle Name</label> <input type="text"
            value="<c:out value='${user.name}' />" class="form-control"
            name="veichlename" required="required" placeholder="Toyota Axio" pattern="[a-zA-Z]+$">
        </fieldset>

        <fieldset class="form-group">
          <label> Veichle Facilities</label> <input type="text"
            value="<c:out value='${user.facilities}' />" class="form-control"
            name="facilities" required="required" placeholder="A/C or non A/C or Max 4 seats" pattern="[0-9a-zA-Z]+$">
        </fieldset>


        <fieldset class="form-group">
          <label> cost Per Day</label> <input type="number"
            value="<c:out value='${user.cost}' />" class="form-control"
            name="cost" required="required" placeholder="4000LKR" pattern="(0|[1-9]\d*)$">
        </fieldset>
        <fieldset class="form-group">
          <label> Veichle type</label> <input type="text"
            value="<c:out value='${user.type}' />" class="form-control"
            name="type" required="required" placeholder="Car / Van" pattern="[a-zA-Z]+$">
        </fieldset>
        <fieldset class="form-group">
          <label> Image</label> <input type="file" class="form-control"
            name="file">

        </fieldset>

        <div class="container text-right" style="margin-top: 50px">

          <button type="submit" class="btn-xl btn-success">Submit</button>
        </div>
        </form>
      </div>
    </div>
    <br> <br> <br>
  </div>
</body>
</html>