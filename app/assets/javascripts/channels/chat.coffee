App.chat = App.cable.subscriptions.create "ChatChannel",
  connected: ->
    # Called when the subscription is ready for use on the server

  disconnected: ->
    # Called when the subscription has been terminated by the server

  received: (data, userid) ->
    # Called when there's incoming data on the websocket for this channel
    
    $('#dummy_message')
      .clone()
      .find('#username').text(data['userid'])
      .end()
      .find('#body').text(data['message'])
      .end()
      .find('#time').text(data['created_at'])
      .end()
      .appendTo($('#messages'));

  send_message: (data, userid, id) ->
    # 사용자의 userid와 입력한 메시지의 body값을 가져옴
    @perform 'send_message', message: data, userid: userid, space: id