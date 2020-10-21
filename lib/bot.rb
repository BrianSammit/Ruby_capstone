require 'telegram/bot'
require_relative 'motivate.rb'

class Bot
  def initialize
    token = '1350164700:AAFxaHPVzvJnbBLVguhiUDkWyakr2m2pyYA'

    Telegram::Bot::Client.run(token) do |bot|
      bot.listen do |message|
        case message.text
        when '/start'
          bot.api.send_message(chat_id: message.chat.id, text: "Hello, #{message.from.first_name}")
        when '/stop'
          bot.api.send_message(chat_id: message.chat.id, text: "Bye, #{message.from.first_name}")
        end
      end
    end
  end
end
