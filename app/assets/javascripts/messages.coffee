$(document).on "turbolinks:load", ->
  $("form#js-socket").submit (event) ->
    console.log("stopping submitting via HTTP")
    event.preventDefault()
    # cache element to a variable $input
    $input = $(this).find('input:text')
    data = {body: $input.val()}
    console.log("sending over socket: ", data)
    App.messages.create(data)
    $input.val('')
