define [], ->

  # Handles site-wide event delegations for all elements.
  # @param selector The CSS-style element selector.
  # @param event The event to bind to, click, hover, mouseenter, etc.
  # @param handler The handler function to execute on event firing
  # return void
  (selector, event, handler) ->

    # Define function to wrap the handler function in
    fnc = (e) ->
      # Get the events source element. Fallback for IE
      src = e.target || e.srcElement

      # Bind the element matcher. Determines events
      # source element by matching the defined selector with it
      matcher = src.webkitMatchesSelector || src.mozMatchesSelector || (selector) ->
        # Find all elements matching the selector
        elements = document.querySelectorAll selector

        # Attempt to find the source element in matching elements
        return true for element in elements when element is this

        # Failed, dont call the handler
        return false

      # Call the handler only if a matching element was found
      handler.call src, e if matcher.call src, selector

    # Bind the event, fallback for IE 
    if document.addEventListener then document.addEventListener event, fnc else document.attachEvent "on"+event, fnc


