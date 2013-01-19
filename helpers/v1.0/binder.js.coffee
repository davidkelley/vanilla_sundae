define ['helpers/delegate'], (delegation) ->
  (events) -> 
    for event in events
      for action in event
        for handler in action
          delegation event, action, handler
