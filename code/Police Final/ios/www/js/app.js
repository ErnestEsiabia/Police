// Ionic Starter App

// angular.module is a global place for creating, registering and retrieving Angular modules
// 'starter' is the name of this angular module example (also set in a <body> attribute in index.html)
// the 2nd parameter is an array of 'requires'
// 'starter.controllers' is found in controllers.js
angular.module('starter', ['ionic', 'starter.controllers'])

.run(function($ionicPlatform) {
  $ionicPlatform.ready(function() {
    // Hide the accessory bar by default (remove this to show the accessory bar above the keyboard
    // for form inputs)
    if (window.cordova && window.cordova.plugins.Keyboard) {
      cordova.plugins.Keyboard.hideKeyboardAccessoryBar(true);
      cordova.plugins.Keyboard.disableScroll(true);

    }
    if (window.StatusBar) {
      // org.apache.cordova.statusbar required
      StatusBar.styleDefault();
    }
  });
})

.config(function($stateProvider, $urlRouterProvider) {
  $stateProvider

    .state('app', {
    url: '/app',
    abstract: true,
    templateUrl: 'templates/menu.html',
    controller: 'AppCtrl'
  })

  .state('app.search', {
    url: '/search',
    views: {
      'menuContent': {
        templateUrl: 'templates/search.html',
        controller: 'SearchController'
      }
    }
  })

  .state('app.searchResults', {
    url: '/search/:m/:q',
    views: {
      'menuContent' : {
        templateUrl: 'templates/search_results.html',
        controller: 'SearchResultController'
      }
    }
  })

  .state('app.result', {
    url:'/interview/:case_no',
    views: {
      'menuContent': {
        templateUrl: 'templates/result.html',
        controller: 'ResultController'
      }
    }
  })


  .state('app.field-interview', {
    url: '/field-interview',
    views: {
      'menuContent': {
        templateUrl: 'templates/field-interview.html',
        controller: 'FieldInterviewController'
      }
    }
  })

  .state('app.informant-interview', {
    url: '/informant-interview',
    views: {
      'menuContent': {
        templateUrl: 'templates/informant-interview.html',
        controller: 'InformantController'
      }
    }
  });
  // if none of the above states are matched, use this as the fallback
  $urlRouterProvider.otherwise('/app/search');
});
