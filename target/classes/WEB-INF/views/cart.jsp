<%@ include file="/WEB-INF/views/templates/header.jsp" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>

	<div class="container-wrapper">
		<div class="container">
			<section>
				<div class="jumbotron">
					<div class="container">
						<h1>Cart</h1>
						<p>All products in your shopping cart</p>
					</div>
				</div>
			</section>
			
		    <section class="container" ng-app="cartApp">
		   
		    <div ng-controller = "cartCtrl" ng-init="initCartId('${cartId}')"/>
		    	
		    	<div>
		    		<a class="btn btn-danger pull-left" ng-click="clearCart()">
		    		<span class="glyphicon glyphicon-remove"/>clear cart</a>
		    		
		    		<table class="table table-hover">
		    			<tr>
		    				<th>Product</th>
		    				<th>Unit Price</th>
		    				<th>Quantity</th>
		    				<th>Price</th>
		    				<th>Action</th>
		    			</tr>
		    			<tr ng-repeat="item in cart.cartItems">
		    				<td>{{item.product.productName}}</td>
		    				<td>{{item.product.productPrice}}</td>
		    				<td>{{item.quantity}}</td>
		    				<td>{{item.totalPrice}}</td>
		    				<td><a href="#" class="label label-danger" 
		    				       ng-click="removeFromCart(item.product.productId)">remove button</a></td>
		    			</tr>
		    			<tr>
		    				<td></td>
		    				<td></td>
		    				<td>Grand Total</td>
		    				<td>{{cart.grandTotal}}</td>
		    				<td></td>
		    			</tr>
		    		</table>
		    		
		    		<a href="<spring:url value="/productList" />" class="btn btn-primary">Continue Shopping</a>
		    		
		    	</div>
		    </section>
		</div>
	</div>

<%@ include file="/WEB-INF/views/templates/footer.jsp" %> 







