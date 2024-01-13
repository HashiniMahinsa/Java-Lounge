<%@page import="entities.ReservationObj"%>
<%@page import="DAO.ResDAO"%>
<%@page import="java.util.ArrayList"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<table border="1" cellspacing="0" cellpadding="10" width="250">
		<tr>
			<th>name</th>
			<th>date</th>
			<th>stime</th>
			<th>etime</th>
			<th>seats</th>
			<th>email</th>
		</tr>
		<%
			ArrayList<ReservationObj> ReservationList=new ResDAO().getAll();
			for (ReservationObj element : ReservationList)
			{
		%>
			<tr>
				<td><%=element.getName() %></td>
				<td><%=element.getDate() %></td>			
				<td><%=element.getStime() %></td>
				<td><%=element.getEtime() %></td>		
				<td><%=element.getSeats() %></td>	
				<td><%=element.getEmail() %></td>
				
				
			</tr>
		<%
			}
		%>
	
	
	</table>

</body>
</html>