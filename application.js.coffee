
#Perform top-level application initialisation
require ['module/stub', 'module/delegate', 'lib/modernizr'], (s,d) -> 
	d '.btn', 'click', ->
		console.log "clicked"