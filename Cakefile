{exec} = require 'child_process'

task 'build', 'Build project from *.coffee to *.js', ->
  cwd = process.cwd()
  process.chdir 'public/static/'
  exec 'coffee -b -m --output js/ coffee/', (err, stdout, stderr) ->
    throw err if err
    console.log stdout + stderr
  process.chdir cwd

task 'sbuild', 'Build project from *.coffee to *.js', ->
  cwd = process.cwd()
  process.chdir 'public/static/'
  exec 'coffee -b -m --output js/ coffee/', (err, stdout, stderr) ->
    throw err if err
    console.log stdout + stderr
  process.chdir cwd

task 'almondify', 'Almondify js files into one build.js', ->
  cwd = process.cwd()
  process.chdir 'public/static/js/'
  exec 'node vendor/r.js -o build.js', (err, stdout, stderr) ->
    throw err if err
    console.log stdout + stderr
  process.chdir cwd

task 'coffeelint', 'Coffielint the application', ->
  exec 'coffeelint -r -f coffeelint.config public/static/coffee/', (err, stdout, stderr) ->
    if err && err.code is 1
      console.log "Failed"
    else
      console.log "Success"
    console.log stdout + stderr