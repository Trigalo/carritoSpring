<%@ include file="/WEB-INF/views/templates/header.jsp" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>

	<div class="container">
		<div class="page-header">
			<h1>Products</h1>
			<p class="lead">Check all products</p>
		</div>
		
		<table class="table table-hover table-striped">
			<tr>
				<th>Photo</th>
				<th>Id</th>
				<th>Name</th>
				<th>Description</th>
				<th>Price</th>
				<th>Status</th>
				<th>Condition</th>
				<th>Units</th>
				<th></th>
			</tr>
			<c:forEach items="${products}" var="product">
			<tr>
				<td><img alt="photo" style="width:80px" src="<c:url value="/resources/images/${product.productId}.png"/>"></td>
				<td>${product.productId}</td>
				<td>${product.productName}</td>
				<td>${product.productDes}</td>
				<td>${product.productPrice}</td>
				<td>${product.productStatus}</td>
				<td>${product.productCondition}</td>
				<td>${product.productUnits}</td>
				<td><a href="<spring:url value="/productList/productDetail/${product.productId}"/>">
				     <span class="glyphicon glyphicon-asterisk"/></a></td>
			</tr>
		    </c:forEach>
		</table>
	
	</div>
    
<%@ include file="/WEB-INF/views/templates/footer.jsp" %> 