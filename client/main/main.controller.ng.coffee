'use strict'

angular.module 'nicescrolltestApp'
.controller 'MainCtrl', ['$scope', '$meteor', ($scope, $meteor) ->
  $scope.options =
    cursorcolor: '#00dd00'
    cursorwidth: '10px'
]