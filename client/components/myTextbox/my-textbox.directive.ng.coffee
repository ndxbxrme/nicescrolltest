'use strict'

angular.module 'nicescrolltestApp'
.directive 'myTextbox', ['$interval', ($interval) ->
  {
    restrict: 'EA'
    require: 'ngModel'
    templateUrl: 'client/components/myTextbox/my-textbox.view.html'
    replace: true
    link: (scope, elem, attrs, ngModel) ->
      scope.options =
        cursorcolor: '#00dd00'
        cursorwidth: '10px'
      
      intFunc = $interval ->
        if elem[0].innerHTML isnt ngModel.$viewValue
          ngModel.$setViewValue elem[0].innerHTML
      , 300
      scope.$on '$destroy', ->
        if angular.isDefined(intFunc)
          $interval.cancel intFunc
          intFunc = undefined
      ngModel.$formatters.unshift (val) ->
        elem[0].innerHTML = val
        val
      scope.property = 'myTextbox'
  }
]