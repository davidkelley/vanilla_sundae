define ['helper/delegate'], (delegation) ->
  (events) -> 
    for ev, event of events
      for ac, action of event
        for handler in action
          delegation ev, ac, handler
