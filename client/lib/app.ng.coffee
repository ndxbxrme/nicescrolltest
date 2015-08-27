angular.module 'nicescrolltestApp', [
  'angular-meteor'
  'ngSanitize'
  'ui.router'
  'ui.bootstrap'
  'angular-nicescroll'
]

onReady = () ->
  angular.bootstrap document, ['nicescrolltestApp']
  
if Meteor.isCordova
  angular.element(document).on 'deviceready', onReady
else
  angular.element(document).ready onReady