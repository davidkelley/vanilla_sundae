#Perform top-level application initialisation
require ['module/stub', 'helper/delegate', 'modernizr'], (s,d) ->
  d '.btn', 'click', ->
    console.log "clicked"