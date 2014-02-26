define ['jquery','app/controller/screen','app/view/screen1'],($,ScreenController,Screen2View) ->
  class Screen2Controller extends ScreenController
    constructor:()->
      @setView(new Screen2View('.js-screen2'))
    