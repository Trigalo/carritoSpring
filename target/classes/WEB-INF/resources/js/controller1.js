var cartAppDemo = angular.module('cartAppDemo', []);

cartAppDemo.controller('cartControl', function($scope, $http){

	$scope.refreshCart = function(cartId) {
		$http.get('/Kamis/rest/cart/' + $scope.cartId).success(function(data){
			$scope.cart = data;
		});
	};

	$scope.clearCart = function() {
		$http.delete('/Kamis/rest/cart/' + $scope.cartId).success(function(data){
			$scope.refreshCart($scope.cartId);
		});
	};
	
	$scope.testCart = function() {
			alert("Test angular desde angular 1");
	};

	$scope.initCartId = function(cartId) {
		$scope.cartId = cartId;
		$scope.refreshCart($scope.cartId);
	};

	$scope.addToCart = function(productId) {
		$http.put('/Kamis/rest/cart/add/' + productId).success(function(data) {
			alert("Product added");
		});
	};

	$scope.removeFromCart = function(productId) {
		$http.put('/Kamis/rest/cart/remove/' + productId).success(function(data) {
			$scope.refreshCart($scope.cartId);
		});
	};

});