<%@ include file="/WEB-INF/views/templates/header.jsp" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>

	<div class="container">
		<div class="page-header">
			<h1>Admin page</h1>
			<p class="lead">Here you can admin the site</p>
		</div>
		
		<c:if test="${pageContext.request.userPrincipal.name != null}">
			<h2>
				Welcome: ${pageContext.request.userPrincipal.name} | 
				<a href="<c:url value="/j_spring_security_logout"/>">Logout</a>
			</h2>
		</c:if>
		
		<h3>
			<a href="<c:url value="/admin/employeeInventory"/>" >Employees</a>
		</h3>
		<h3>
			<a href="<c:url value="/admin/productInventory"/>" >Products</a>
		</h3>
		
		
	
	</div>
    
<%@ include file="/WEB-INF/views/templates/footer.jsp" %> 