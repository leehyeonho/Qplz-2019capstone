class ChatChannel < ApplicationCable::Channel
  def subscribed
    stream_from "chat_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def send_message(data)
    # DB에 body값과 userid 값을 가진 메시지를 넣는 부분
    @message = Message.new(body: data['message'], userid: data['userid'], space: data['space'])
    
    # 메시지의 정보를 가져오고, 이를 화면에 보여주기 위해 브로드캐스트함
    if @message.save
      ActionCable.server.broadcast "chat_channel", message: @message.body, userid: @message.userid, created_at: @message.created_at.strftime('%Y-%m-%d %H:%M')
    end
  end
end
