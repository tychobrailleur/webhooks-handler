var app = angular.module('events', ['ngResource'])
    .factory('eventService', ['$resource', function($resource) {
        return $resource('/events/:id');
    }])
    .controller('MainCtrl', ['$scope', 'eventService', function($scope, eventService) {

        $scope.reload = function() {
            $scope.events = eventService.query();
        };

        $scope.reload();
    }]);
