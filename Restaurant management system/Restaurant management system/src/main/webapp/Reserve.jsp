<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="entities.User" import="DAO.ResDAO" import="java.io.IOException"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<% 
String name = request.getParameter("name"); 
String date = request.getParameter("reservationDate");
int stime = Integer.parseInt(request.getParameter("startHour"));
int etime = Integer.parseInt(request.getParameter("endHour"));
int seats = Integer.parseInt(request.getParameter("tableSeats"));
String email = request.getParameter("email"); 
int bill=(stime-etime)*seats*100;
%>

<jsp:useBean id="res" class="entities.ReservationObj" scope="session"></jsp:useBean>
<jsp:setProperty property="name" name="res" value="<%=name %>"/>
<jsp:setProperty property="date" name="res" value="<%=date %>"/>
<jsp:setProperty property="stime" name="res" value="<%=stime %>"/>
<jsp:setProperty property="etime" name="res" value="<%=etime %>"/>
<jsp:setProperty property="seats" name="res" value="<%=seats %>"/>
<jsp:setProperty property="email" name="res" value="<%=email %>"/>
<jsp:setProperty property="bill" name="res" value="<%=bill %>"/>

        <%
        ResDAO dao = new ResDAO();
		boolean result = dao.insert(res);
		if(result)
		{
			response.sendRedirect("Start.jsp");
		}
		else
		{
			response.getOutputStream().print("Something went Wrong");
			//response.sendRedirect("student-list.jsp");
		}
        %>
</body>
</html>