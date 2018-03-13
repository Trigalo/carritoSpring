<%@ include file="/WEB-INF/views/templates/header.jsp" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

	<div class="container">
		<div class="page-header">
			<h1>Employees</h1>
			<p class="lead">Add employees</p>
			<p>Please fill all the fields</p>
		</div>
		
		<div class="container">
			<form:form action="${pageContext.request.contextPath}/admin/employeeInventory/addEmployee" 
			           method="post" commandName="employee" enctype="multipart/form-data">
				<div class="form-group">
					<label for="name">Name</label>
					<form:errors path="employeeName" cssStyle="color:#FF0000"/>
					<form:input path="employeeName" id="name" class="form-control"/>
				</div>
				
				<div class="form-group">
					<label for="lastName">LastName</label>
					<form:input path="employeeLastName" id="lastName" class="form-control"/>
				</div>
				
				<div class="form-group">
					<label for="address">Address</label>
					<form:input path="employeeAddress" id="address" class="form-control"/>
				</div>
				
				<div class="form-group">
					<label for="phone">Phone</label>
					<form:input path="employeePhone" id="phone" class="form-control"/>
				</div>
				
				<div class="form-group">
					<label for="email">Email</label>
					<form:input path="employeeEmail" id="email" class="form-control"/>
				</div>
				
				<div class="form-group">
					<label for="employeeImage" class="control-label">Choose Image</label>
					<form:input path="employeeImage" id="employeeImage" type="file" class="form-control"/>
				</div>
				
				<br>
				<input type="submit" value="Submit" class="btn btn-primary">
				<a href= "<c:url value="/admin/employeeInventory"/>" class="btn btn-danger" >cancel</a>
				
				
			</form:form>
		</div>
		
	</div>
    
<%@ include file="/WEB-INF/views/templates/footer.jsp" %> 