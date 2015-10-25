var app = angular.module('events', ['ngResource'])
    .factory('eventService', function($resource) {
        return $resource('/events/:id');
    })
    .controller('MainCtrl', ['$scope', 'eventService', function($scope, eventService) {
        $scope.events = eventService.query();
    }]);
