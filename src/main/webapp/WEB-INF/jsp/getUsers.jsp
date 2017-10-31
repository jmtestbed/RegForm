<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<style type="text/css">
		  <%@include file="/WEB-INF/css/getUsers.css" %>
		</style>
	</head>
	<body>
		<h1>List of all registered users</h1>
		<div class="datagrid">
			<table>
				<thead>
					<tr>
						<th>First Name</th>
						<th>Last Name</th>
						<th>Address1</th>
						<th>Address2</th>
						<th>City</th>
						<th>State</th>
						<th>Zip</th>
						<th>Country</th>
						<th>Date</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${userList}" var="u" varStatus="loopStatus">
					<tr class="${loopStatus.index % 2 == 0 ? 'alt' : ''}">
						<td>${u.firstName}</td>
						<td>${u.lastName}</td>
						<td>${u.address1}</td>
						<td>${u.address2}</td>
						<td>${u.city}</td>
						<td>${u.state}</td>
						<td>${u.zip}</td>
						<td>${u.country}</td>
						<td>${u.createDate}</td>
					</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</body>
</html>