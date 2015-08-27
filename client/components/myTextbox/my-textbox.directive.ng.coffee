'use strict'

angular.module 'nicescrolltestApp'
.directive 'myTextbox', [() ->
  {
    restrict: 'EA'
    templateUrl: 'client/components/myTextbox/my-textbox.view.html'
    replace: true
    link: (scope, elem, attrs) ->
      scope.property = 'myTextbox'
  }
]