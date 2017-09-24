
sochub.controller('PostController', ['$scope', '$resource', '$window', '$http', '$location',
		function($scope, $resource, $window, $http, $location){
		$scope.save =  function(){

				var post = $http({
                method: "POST",
                url: "/post",
                dataType: 'json',
                data: { post: $scope.post },
                headers: { "Content-Type": "application/json" }
            });
 
            post.success(function (data, status) {
                $window.alert("Hello: " + data.name + " .\nCurrent Date and Time: " + data.DateTime);
            });
 
            post.error(function (data, status) {
                $window.alert(data.Message);
            });
          }

        $scope.soclogin = function() {
            $location.path('/soclogin')
        }

}]);



