define [], -> 
  {
    '.btn-group': {
      click: [
        (e) ->
          this.classList.toggle('open')
      ]
    } 
  }