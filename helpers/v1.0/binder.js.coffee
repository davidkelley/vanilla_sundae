define ['helpers/delegate'], (delegation) ->
  (events) -> 
    delegation event, action, handler for handler in action in event in events 