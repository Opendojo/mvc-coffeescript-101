define ['jquery'], ($)->
  class ScreenController
    constructor:()->

    show:()->
      console.log("Show")
      @view.show()

    hide:()->
      console.log("Hide")
      @view.hide()


    setView:(@view)->