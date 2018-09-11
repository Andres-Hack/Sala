angular.module 'sala'
  .service 'PersonalService', ($http, $q, apiServer) ->
    'ngInject'

    @getAll = ()->
      defered = $q.defer()
      promise = defered.promise
      console.log(apiServer)
      $http.get("#{apiServer}/api/api_sala/").success((data) ->
        defered.resolve data
      ).error((error) ->
        defered.reject error
      )
      promise

    ###*
     * Realiza la inscripcion de na persona
     * @param  int cursoId
     * @param  {string} ci
     * @return {promise}
    ###

    @registrar = (datosEstados) ->
      defered = $q.defer()
      promise = defered.promise
      $http.post("#{apiServer}/api/api_sala/", datosEstados).success((data) ->
        defered.resolve data
      ).error((error) ->
        defered.reject error
      )
      promise
    return
