define ['jquery','app/controller/screen','app/view/screen1'],($,ScreenController,Screen1View) ->
  class Screen1Controller extends ScreenController
    constructor:()->
      @setView(new Screen1View('.js-screen1'))