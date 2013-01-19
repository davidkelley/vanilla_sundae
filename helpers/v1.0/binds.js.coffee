define [], -> 
  {
    '.btn-group .dropdown-toggle': {
      click: [
        (e) ->
          this.parentNode.classList.toggle('open')
      ]
    } 
  }