
sochub.controller('PostController', ['$scope', '$resource', '$window', '$http', '$location', 'Post',
    function($scope, $resource, $window, $http, $location, Post){

        $scope.posts = Post.index();
        
		$scope.save =  function(){
			$http({
                method: "POST",
                url: "/post",
                dataType: 'json',
                data: { post: $scope.post },
                headers: { "Content-Type": "application/json" }
            });
          }

        $scope.soclogin = function() {
            $location.path('/soclogin');
        }

}]);



