<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "resort";
String userid = "root";
String password = "";
String User=request.getParameter("guest");

try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<!DOCTYPE html>
<html>
<body>
	<div class="container" style="margin-left: 20%; padding-top: 5%">
	<%@include file="header.jsp"%>
<form class="form-inline" method="post" action="eventSearch.jsp">
<input type="text" name="User" class="form-control" placeholder="Search user name..">
<button type="submit" name="save" class="btn btn-primary">Search</button>
</form>


<table class="table table-bordered">
			<thead>
				<tr>

					<th>Guest Name</th>
					<th>Mobile</th>
					<th>Additional </th>
					<th>Decorational</th>
					
					<th>Date</th>
				</tr>
			</thead>
					<tbody>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from event WHERE guest LIKE '"+ User + "%';";
System.out.println(sql);
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr>
<td><%=resultSet.getString("guest") %></td>
<td><%=resultSet.getString("mobile") %></td>
<td><%=resultSet.getString("additional") %></td>
<td><%=resultSet.getString("decoration") %></td>
<td><%=resultSet.getString("Date") %></td>
</tr>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
</div>
</body>

</html>