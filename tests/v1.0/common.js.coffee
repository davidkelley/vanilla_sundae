define [], ->

  test "a basic test example", ->
    value = "hello"
    equal value, "hello", "We expect value to be hello"

  test "classList", ->
    value = ("classList" in document.createElement("a"))
    equal value, true, "We expect classList to be present"