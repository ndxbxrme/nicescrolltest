'use strict'

angular.module 'nicescrolltestApp'

.config ['$urlRouterProvider', '$locationProvider', ($urlRouterProvider, $locationProvider) ->
  $locationProvider.html5Mode true
  $urlRouterProvider.otherwise '/'
]
