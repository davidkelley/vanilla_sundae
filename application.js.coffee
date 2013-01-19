#Perform top-level application initialisation
require ['helper/binder', 'helpers/binds'], (Binder, binds) ->
  new Binder binds