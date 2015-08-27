'use strict'

angular.module 'nicescrolltestApp'
.controller 'MainCtrl', ['$scope', '$meteor', ($scope, $meteor) ->
  $scope.thing = 'hey there, do some typin';
]