angular.module 'nicescrolltestApp', [
  'angular-meteor'
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