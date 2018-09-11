angular.module 'sala'
  .config ($stateProvider, $urlRouterProvider) ->
    'ngInject'
    $stateProvider
      .state 'home',
        url: '/'
        templateUrl: 'app/main/main.html'
        controller: 'MainController'
        controllerAs: 'main'
      .state 'seguridad',
        url: '/seguridad'
        templateUrl: 'app/seguridad/seguridad.html'
        controller: 'SeguridadController'
        controllerAs: 'seg'
      .state 'sensores',
        url: '/sensores'
        templateUrl: 'app/sensores/sensores.html'
        controller: 'SensoresController'
        controllerAs: 'sen'
      .state 'camaras',
        url: '/camaras'
        templateUrl: 'app/camaras/camaras.html'
        controller: 'CamarasController'
        controllerAs: 'cam'
      .state 'reporteEstado',
        url: '/reporteEstado'
        templateUrl: 'app/reporteEstado/reporteEstado.html'
        controller: 'ReporteEstadoController'
        controllerAs: 'repe'
      .state 'reporteSensor',
        url: '/reporteSensor'
        templateUrl: 'app/reporteSensor/reporteSensor.html'
        controller: 'ReporteSensorController'
        controllerAs: 'reps'

    $urlRouterProvider.otherwise '/'
