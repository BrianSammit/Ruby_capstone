 require 'telegram/bot'
 require_relative 'trivias'

class Bot
  def initialize
    @token = '1350164700:AAFxaHPVzvJnbBLVguhiUDkWyakr2m2pyYA'
    @mood = Trivias.new
    Telegram::Bot::Client.run(@token) do |bot|
      bot.listen do |message|
        case message.text
        when '/start'
          bot.api.send_message(chat_id: message.chat.id, text: "Hello, #{message.from.first_name} I'm funzo bot that going to give you a trivias. to start the bot type /start to stop it type /stop and you can choose from diferents trivias: /history")
        when '/history'
          @answers = Telegram::Bot::Types::ReplyKeyboardMarkup.new(keyboard: [%w(A B), %w(C D)], one_time_keyboard: true)   
          bot.api.send_message(chat_id: message.chat.id, text: @mood.triv_pick(@mood.history), reply_markup: @answers)
        when "A"
          bot.api.send_message(chat_id: message.chat.id, text: @mood.triv_pick(@mood.history), reply_markup: @answers)
        when "B"
          bot.api.send_message(chat_id: message.chat.id, text: @mood.triv_pick(@mood.history), reply_markup: @answers)
        when "C"
          bot.api.send_message(chat_id: message.chat.id, text: @mood.triv_pick(@mood.history), reply_markup: @answers)
        when "D"
          bot.api.send_message(chat_id: message.chat.id, text: @mood.triv_pick(@mood.history), reply_markup: @answers)
        when '/stop'
          kb = Telegram::Bot::Types::ReplyKeyboardRemove.new(remove_keyboard: true)
          bot.api.send_message(chat_id: message.chat.id, text: "Sorry to see you go, Bye, #{message.from.first_name} :(", reply_markup: kb)
        end
      end
    end
  end
end
