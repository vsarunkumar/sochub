sochub.factory('Post', ['$resource', function($resource) {
    return $resource('/post.json', {}, {
       index:   { method: 'GET', isArray: true }
    });
}]);