require.config(
  paths:
    jquery: 'vendor/jquery-2.1.0'
)

require ['jquery','app/controller/main'],($,Application)->

  $(document).ready(
    ()->
      app = new Application()
      app.launch()
  )