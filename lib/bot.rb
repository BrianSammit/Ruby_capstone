require 'telegram/bot'

class Bot
  def initialize
    token = '1350164700:AAFxaHPVzvJnbBLVguhiUDkWyakr2m2pyYA'
    Telegram::Bot::Client.run(token) do |bot|
      bot.listen do |message|
        case message.text
        when '/start'
          bot.api.send_message(chat_id: message.chat.id, text: "Hello, #{message.from.first_name}")
        when '/map'
          bot.api.send_location(chat_id: message.chat.id, latitude: -37.807416, longitude: 144.985339)
        when '/stop'
          bot.api.send_message(chat_id: message.chat.id, text: "Bye, #{message.from.first_name}")
        end
      end
    end
  end
end
