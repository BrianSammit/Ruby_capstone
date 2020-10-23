 require 'telegram/bot'
 require_relative 'trivias'
 require_relative 'music'

class Bot
  def initialize
    @token = '1350164700:AAFxaHPVzvJnbBLVguhiUDkWyakr2m2pyYA'
    @music = Music.new
    @triv = Trivias.new

    Telegram::Bot::Client.run(@token) do |bot|
      bot.listen do |message|
        case message.text
        when '/start'
          bot.api.send_message(chat_id: message.chat.id, text: "Hello, #{message.from.first_name} I'm funzo bot that going to give you a random song. to start the bot type /start to stop it type /stop and you can choose from diferents types:Type /music then select one button with the type of music you want to heard. Also theres a trivia of history still on (beta) to try it type /history")
        when "/music"
          question = 'Selec what you want to heard'
          answers =
            Telegram::Bot::Types::ReplyKeyboardMarkup
            .new(keyboard: [%w(Rock Techno), %w(Hip-Hop Romantic)], one_time_keyboard: true)
          bot.api.send_message(chat_id: message.chat.id, text: question, reply_markup: answers)
        when "Rock"
          @music.random_music(@music.rock)
          bot.api.send_message(chat_id: message.chat.id, text: @music.random_music(@music.rock).to_s )
          bot.api.send_message(chat_id: message.chat.id, text: "wnat to try again /music")
        when "Techno"
          @music.random_music(@music.techno)
          bot.api.send_message(chat_id: message.chat.id, text: @music.random_music(@music.techno).to_s )
          bot.api.send_message(chat_id: message.chat.id, text: "wnat to try again /music")
        when "Hip-Hop"
          @music.random_music(@music.hiphop)
          bot.api.send_message(chat_id: message.chat.id, text: @music.random_music(@music.hiphop).to_s )
          bot.api.send_message(chat_id: message.chat.id, text: "wnat to try again /music")
        when "Romantic"
          @music.random_music(@music.romantic)
          bot.api.send_message(chat_id: message.chat.id, text: @music.random_music(@music.romantic).to_s )
          bot.api.send_message(chat_id: message.chat.id, text: "wnat to try again /music")
        when '/trivia'
          @answers = Telegram::Bot::Types::ReplyKeyboardMarkup.new(keyboard: [%w(A B), %w(C D)], one_time_keyboard: true)   
          bot.api.send_message(chat_id: message.chat.id, text: @triv.triv_pick(@triv.trivia), reply_markup: @answers)
        when "A"
          bot.api.send_message(chat_id: message.chat.id, text: "The correct answer is #{@triv.ans(@triv.trivia)}" )
          bot.api.send_message(chat_id: message.chat.id, text: @triv.triv_pick(@triv.trivia), reply_markup: @answers)
        when "B"
          bot.api.send_message(chat_id: message.chat.id, text: "The correct answer is #{@triv.ans(@triv.trivia_ans)}" )
          bot.api.send_message(chat_id: message.chat.id, text: @triv.triv_pick(@triv.trivia), reply_markup: @answers)
        when "C"
          bot.api.send_message(chat_id: message.chat.id, text: "The correct answer is #{@triv.ans(@triv.trivia_ans)}" )
          bot.api.send_message(chat_id: message.chat.id, text: @triv.triv_pick(@triv.trivia), reply_markup: @answers)
        when "D"
          bot.api.send_message(chat_id: message.chat.id, text: "The correct answer is #{@triv.ans(@triv.trivia_ans)}" )
          bot.api.send_message(chat_id: message.chat.id, text: @triv.triv_pick(@triv.trivia), reply_markup: @answers)
        when '/stop'
          kb = Telegram::Bot::Types::ReplyKeyboardRemove.new(remove_keyboard: true)
          bot.api.send_message(chat_id: message.chat.id, text: "Sorry to see you go, Bye, #{message.from.first_name} :(", reply_markup: kb)
        end
      end
    end
  end
end
