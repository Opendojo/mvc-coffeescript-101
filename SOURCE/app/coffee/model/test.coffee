class Controller
  count: 0
  
  Controller::getCount = ->
    Controller::count

  constructor:(name)->
    @name = name
    Controller::count++

  show: ()->
    console.log "#{@name}"
    
  hide: ()->
    console.log "#{@name} hidden"



class LoadingController extends Controller
  hide: ()->
    console.log "overrided"
    super()

myInstance = new LoadingController("loading")
myInstance2 = new LoadingController("loading2")

myInstance.show()
myInstance2.show()
myInstance.hide()
myInstance2.hide()

console.log(LoadingController::getCount())

