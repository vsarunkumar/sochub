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
	    })
	    .when('/fblogin', {
	    	templateUrl: 'home/soclogin.html',
	    	controller: 'SocloginController'
	    });;
  }
]);


