var sochub;

sochub = angular.module('sochub', ['templates', 'ngRoute', 'ngResource']);

sochub.config([
  '$routeProvider', function($routeProvider) {
    return $routeProvider
    	.when('/', {
	      templateUrl: "home/index.html",
	      controller: 'HomeController'
	    })
	    .when('/soclogin', {
	    	templateUrl: 'home/soclogin.html',
	    	controller: 'SocloginController'
	    });
  }
]);

sochub.controller("HomeController", ['$scope', '$location', function($scope, $location) {
	$scope.soclogin = function() {
  	$location.path('/soclogin')
}
}]);

sochub.controller("SocloginController", ['$scope', function($scope) {
	$scope.soclogin = function() {
  //return $location.path("/soclogin");
}
}]);
