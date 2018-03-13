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
			<form:form action="${pageContext.request.contextPath}/admin/productInventory/addProduct" 
			           method="post" commandName="product" enctype="multipart/form-data">
			           
				<div class="form-group">
					<label for="name">Name</label>
					<form:errors path="productName" cssStyle="color:#FF0000"/>
					<form:input path="productName" id="name" class="form-control"/>
				</div>
				
				<div class="form-group">
					<label for="productDes">Description</label>
					<form:textarea path="productDes" id="productDes" class="form-control"/>
				</div>
				
				<div class="form-group">
					<label for="productCondition">Condition</label>
					<label class="checkbox-inline"><form:radiobutton path="productCondition" id="productCondition" value="new"/>  New</label> 
				    <label class="checkbox-inline"><form:radiobutton path="productCondition" id="productCondition" value="used"/>  Used</label> 
				</div>
				
				<div class="form-group">
					<label for="productStatus">Status</label>
					<label class="checkbox-inline"><form:radiobutton path="productStatus" id="productStatus" value="active"/>  Active</label> 
				    <label class="checkbox-inline"><form:radiobutton path="productStatus" id="productStatus" value="no-active"/>  No active</label> 
				</div>
				
				<div class="form-group">
					<label for="productPrice">Price</label>
					<form:input path="productPrice" id="productPrice" class="form-control"/>
				</div>
				
				<div class="form-group">
					<label for="productUnits">Units</label>
					<form:input path="productUnits" id="productUnits" class="form-control"/>
				</div>
				
				<div class="form-group">
					<label for="productImage" class="control-label">Choose Image</label>
					<form:input path="productImage" id="productImage" type="file" class="form-control"/>
				</div>
				
		
				<br>
				<input type="submit" value="Submit" class="btn btn-primary">
				<a href= "<c:url value="/admin/productInventory"/>" class="btn btn-danger" >cancel</a>
				
				
			</form:form>
		</div>
		
	</div>
    
<%@ include file="/WEB-INF/views/templates/footer.jsp" %> 