 <%@ include file="/WEB-INF/views/templates/header.jsp" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>

	<div class="container">
		<div class="page-header">
			<h1>Products</h1>
			<p class="lead">Products Detail</p>
		</div>
		
		<div class="container" ng-app="cartApp">
		       
			<div class="row">
				<div class="col-md-5">
					<img alt="photo" style="width:30%" src="<c:url 
					     value="/resources/images/${product.productId}.png"/>">
				</div>
				
				
				
				<div class="col-md-5">
					<h3>Name: ${product.productName}</h1>
					<p>Description: ${product.productDes}</p>
					<p>Condition: ${product.productCondition}</p>
					<p>Status: ${product.productStatus}</p>
					<p>Price: ${product.productPrice}</p>
					<p>Units: ${product.productUnits}</p>
				</div>
				
				<c:set var="role" scope="page" value="${param.role}"/>
				<c:set var="url" scope="page" value="/productList"/>
				<c:if test="${role=='admin'}">
					<c:set var="url" scope="page" value="/admin/productInventory"/>
				</c:if>
				
				<p ng-controller="cartCtrl">		
				    <a href="#" class="btn btn-success" ng-click="testCart()">Test Angular</a>
					<a href= "<c:url value="${url}"/>" class="btn btn-primary">Back</a>
					<a href="#" class="btn btn-warning" ng-click="addToCart('${product.productId}')">Order Now</a> 
					<a href="<spring:url value="/cart"/>" class="btn btn-success">View Cart</a>
			    </p>		 
				
			</div>
		</div>
	
	</div>
    
<%@ include file="/WEB-INF/views/templates/footer.jsp" %> 



















