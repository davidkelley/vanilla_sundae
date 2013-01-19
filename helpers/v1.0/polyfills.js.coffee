define [], ->

  tests = [
    {
      test: ("classList" in document.createElement("a")),
      polyfill: ['polyfill/classList']
    }
  ]

  for test in tests
    unless test
      require test.polyfill