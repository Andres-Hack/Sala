angular.module 'sala'
  .controller 'SeguridadController', (PersonalService, ArduinoService, toastr) ->
    'ngInject'
    vm = @
    vm.personal = []
    vm.arduino = []
    vm.mostrar = {}
    vm.estado = []
    vm.dato = ''
    vm.estado.foco1 = true
    d = new Date()
    ano = ['Enero','Febrero','Marzo','Abril','Mayo','Junio','Julio','Agosto','Septiembre','Octubre','Noviembre','Diciembre']
    vm.hoy = d.getDate()+'/'+ano[d.getMonth()]+'/'+d.getFullYear()+', '+d.getHours()+':'+d.getMinutes()+':'+d.getSeconds()

    PersonalService.getAll().then((personal) ->
      vm.personal = personal
      vm.mostrar = vm.personal.pop()
      console.log vm.mostrar
    )

    vm.showToastr = ->
      toastr.info 'Este es un mensaje de registro.'
      vm.classAnimation = 'danger'
      console.log  'EL DATO ES : '+vm.estado.foco1
      return

    vm.IdSala = (dato)->
      toastr.error 'El ID ES : '+dato
      vm.classAnimation = 'danger'
      return

    vm.guardarEstado = ->
      vm.mostrar.nombre = "Sala de servidores."
      vm.mostrar.fecha = vm.hoy
      PersonalService.registrar(vm.mostrar).then((response) ->
        toastr.success "Se realizo el cambio de estado en la sala."
        console.log response
      ).catch((ex) ->
        console.log ex
        toastr.error "Ocurrio un error inesperado"
      )
      console.log vm.estado
      return

    vm.mensaje = 'Hola esta es una pagina'
    vm.classAnimation = 'info'

    return
