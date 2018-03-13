<%@ include file="/WEB-INF/views/templates/header.jsp" %>

	<div class="container">
		<div class="page-header">
			<h1>Employees</h1>
			<p class="lead">Employee Detail</p>
		</div>
		
		<div class="container">
			<div class="row">
				<div class="col-md-5">
					<img alt="photo" style="width:100%" src="<c:url value="/resources/images/${employee.employeeId}.png"/>">
				</div>
				<div class="col-md-5">
					<h3>Name: ${employee.employeeName} ${employee.employeeLastName}</h1>
					<p>Address: ${employee.employeeAddress}</p>
					<p>Phone: ${employee.employeePhone}</p>
					<p>Email: ${employee.employeeEmail}</p>
				</div>
			</div>
		</div>
	
	</div>
    
<%@ include file="/WEB-INF/views/templates/footer.jsp" %> 