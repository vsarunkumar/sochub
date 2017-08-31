sochub.controller("HomeController", ['$scope', '$location', function($scope, $location) {
	$scope.soclogin = function() {
  	$location.path('/soclogin')
}
}]);