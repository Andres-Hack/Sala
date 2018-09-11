angular.module 'sala'
  .controller 'SensoresController', (ArduinoService, $interval) ->
    'ngInject'
    vm = @

    ArduinoService.getAll().then((arduino) ->
      vm.arduino = arduino
      console.log vm.arduino
    )
    $interval(() ->
      ArduinoService.getAll().then((arduino) ->
        vm.arduino = arduino
      )
    ,60000)
    return
