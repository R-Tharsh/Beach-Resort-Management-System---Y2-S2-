</html><%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>

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
.report{
width:28px;
height:28px;
}
.edit{
width:35px;
height:35px;
}
</style>
</head>
<body style="background-color: #F3F3F3">
<%@include file="header.jsp" %>
    <div class="container" style="margin-left: 20%; padding-top:5%">
      <h3 class="text-center" style="margin-left:80px;font-size:50px; font-weight:bold">Event Bookings</h3>
      <hr style="width:1050px; border:2px solid #fff">
      <div class="container text-left">

        <a href="<%=request.getContextPath()%>/newevent" class="btn btn-Info" style="margin-left:-10px"><img src="header/images/add.png" class="report">Add Event </a>
      </div>

      <br>
      <table class="table">
        <thead>
          <tr>
          
            <th>Guest Name</th>
            <th>Mobile</th>
            <th>Event Name</th>
            <th>Facilities</th>
            <th>Date</th>
          
            <th>Actions</th>
          </tr>
        </thead>
        <tbody>
        
          <c:forEach var="user" items="${listevent}">

            <tr>
          <td><c:out value="${user.guest}" /></td>
              <td><c:out value="${user.mobile}" /></td>
              <td><c:out value="${user.eventname}" /></td>
              <td><c:out value="${user.facilities}" /></td>
              <td><c:out value="${user.date}" /></td>
              

              <td><a href="editevent?id=<c:out value='${user.id}' />"><img src="header/images/edit (2).png" class="edit"></a>
                &nbsp;&nbsp;&nbsp;&nbsp; <a
                href="deleteevent?id=<c:out value='${user.id}' />"><img src="header/images/delete (2).png" class="edit"></a></td>
            </tr>
          </c:forEach>
          <!-- } -->
        </tbody>

      </table>
            
      <div class="container text-center">

        <a href="<%=request.getContextPath()%>/roompdfevent" class="btn btn-success" style="margin-left:30px;"><img src="header/images/report.png" class="report">Generate Report </a>
      </div>
    </div>
  </div>
</body>
</html>