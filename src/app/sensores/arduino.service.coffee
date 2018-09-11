angular.module 'sala'
  .service 'ArduinoService', ($http, $q, apiArduino, apiServer) ->
    'ngInject'

    @getAll = ()->
      defered = $q.defer()
      promise = defered.promise
      $http.get("#{apiArduino}").success((data) ->
        defered.resolve data
        datosSensor = data
        $http.post("#{apiServer}/api/sensores/", datosSensor).success((data) ->
          defered.resolve data
        ).error((error) ->
          defered.reject error
        )
      ).error((error) ->
        defered.reject error
      )
      promise

    return
