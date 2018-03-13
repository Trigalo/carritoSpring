<%@ include file="/WEB-INF/views/templates/header.jsp" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

	<div class="container">
		<div class="page-header">
			<h1>Employees Edit</h1>
			<p class="lead">Add employees</p>
			<p>Please fill all the fields for update</p>
		</div>
		
		<div class="container">
			<form:form action="${pageContext.request.contextPath}/admin/employeeInventory/editEmployee" 
			           method="post" commandName="employee" enctype="multipart/form-data">
			    <form:hidden path="employeeId" var="${employee.employeeId}"/>      
			           
				<div class="form-group">
					<label for="name">Name</label>
					<form:input path="employeeName" id="name" class="form-control" value="${employee.employeeName}"/>
				</div>
				
				<div class="form-group">
					<label for="lastName">LastName</label>
					<form:input path="employeeLastName" id="lastName" class="form-control" value="${employee.employeeLastName}" />
				</div>
				
				<div class="form-group">
					<label for="address">Address</label>
					<form:input path="employeeAddress" id="address" class="form-control" value="${employee.employeeAddress}" />
				</div>
				
				<div class="form-group">
					<label for="phone">Phone</label>
					<form:input path="employeePhone" id="phone" class="form-control" value="${employee.employeePhone}" />
				</div>
				
				<div class="form-group">
					<label for="email">Email</label>
					<form:input path="employeeEmail" id="email" class="form-control" value="${employee.employeeEmail}" />
				</div>
				
				<div class="form-group">
					<label for="employeeImage" class="control-label">Choose Image</label>
					<form:input path="employeeImage" id="employeeImage" type="file" class="form-control"/>
				</div>
				
				<br>
				<input type="submit" value="Submit" class="btn btn-primary">
				<a href= "<c:url value="/admin/employeeInvemtory"/>" class="btn btn-danger" >cancel</a>
				
				
			</form:form>
		</div>
		
	</div>
    
<%@ include file="/WEB-INF/views/templates/footer.jsp" %> 