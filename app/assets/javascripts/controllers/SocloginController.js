sochub.controller("SocloginController", ['$scope', '$resource', '$location', '$window',
										'$http',
	function($scope, $resource, $location, $window, $http) {

	root_url = $window.location.origin;

	$scope.fb_login_url = root_url + '/auth/facebook';
	$scope.twitter_login_url = root_url + '/auth/twitter';
	$scope.linkedin_login_url = root_url + '/auth/linkedin';

}]);