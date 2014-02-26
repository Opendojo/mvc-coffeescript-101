define ["jquery","app/controller/screen1","app/controller/screen2"], ($,Screen1Controller,Screen2Controller)->
  class Application
    constructor:()->
      @Screen1 = new Screen1Controller()
      @Screen2 = new Screen2Controller()

    launch:()->
      @bind()

    bind:()=>
      console.log "Binding"
      $('body').on "application", (e)=>
        console.log "Event received"
        if e.action
          @dispatch(e)

    dispatch:(event)->
      if event.action?
        if event.action is 'screen1'
          @Screen1.show()
          @Screen2.hide()
        if event.action is 'screen2'
          @Screen2.show()
          @Screen1.hide()


