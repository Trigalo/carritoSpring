<%@ include file="/WEB-INF/views/templates/header.jsp" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>

	<div class="container">
		<div class="page-header">
			<h1>Employees</h1>
			<p class="lead">Our employeees</p>
		</div>
		
		<table class="table table-hover table-striped">
			<tr>
				<th>Photo</th>
				<th>Id</th>
				<th>Name</th>
				<th>Address</th>
				<th>Phone</th>
				<th>Email</th>
				<th></th>
			</tr>
			<c:forEach items="${employees}" var="employee">
			<tr>
				<td><img alt="photo" style="width:80px" src="<c:url value="/resources/images/${employee.employeeId}.png"/>"></td>
				<td>${employee.employeeId}</td>
				<td>${employee.employeeName}</td>
				<td>${employee.employeeAddress}</td>
				<td>${employee.employeePhone}</td>
				<td>${employee.employeeEmail}</td>
				<td><a href="<spring:url value="/employeeList/employeeDetail/${employee.employeeId}"/>">
				     <span class="glyphicon glyphicon-asterisk"/></a></td>
			</tr>
		    </c:forEach>
		</table>
	
	</div>
    
<%@ include file="/WEB-INF/views/templates/footer.jsp" %> 