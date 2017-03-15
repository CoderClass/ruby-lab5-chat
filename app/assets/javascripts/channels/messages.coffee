App.messages = App.cable.subscriptions.create "MessagesChannel",
  connected: ->
    console.log("MessagesChannel connected")
    # Called when the subscription is ready for use on the server

  disconnected: ->
    # Called when the subscription has been terminated by the server

  received: (data) ->
    console.log("client receive ", data)
    # only handle new messages for now
    $(".messages").prepend(data.message)

  create: (data) ->
    @perform("create", message: data)

    # Called when there's incoming data on the websocket for this channel
