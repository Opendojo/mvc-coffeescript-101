define ['jquery'],($)->
  class View
    constructor:(@selector)->

    show:()->
      $(@selector).show()

    hide:()->
      $(@selector).hide()