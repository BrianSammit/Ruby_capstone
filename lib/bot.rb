# rubocop:disable Metrics/CyclomaticComplexity

require 'telegram/bot'
require_relative 'music'
require_relative 'phrases'

class Bot
  def initialize
    @token = '1350164700:AAFxaHPVzvJnbBLVguhiUDkWyakr2m2pyYA'
    @music = Music.new
    @phrase = Phrases.new

    Telegram::Bot::Client.run(@token) do |bot|
      bot.listen do |message|
        case message.text
        when '/start'
          bot.api.send_message(chat_id: message.chat.id, text: "Hello, #{message.from.first_name} I'm funzo bot that going to give you a random song, a random phrase, and trivia BETA. to start the bot type /start to stop it type /stop. Type /music, /phrase or /trivia then select one button.")
        when '/music'
          question = 'Selec what you want to heard'
          answers =
            Telegram::Bot::Types::ReplyKeyboardMarkup
              .new(keyboard: [%w[Rock Techno], %w[Hip-Hop Romantic]], one_time_keyboard: true)
          bot.api.send_message(chat_id: message.chat.id, text: question, reply_markup: answers)
        when 'Rock'
          @music.random_music(@music.rock)
          bot.api.send_message(chat_id: message.chat.id, text: @music.random_music(@music.rock).to_s)
          bot.api.send_message(chat_id: message.chat.id, text: 'Want to try again /music or want to try a diferent funtion /phrase /trivia or you want to /stop')
        when 'Techno'
          @music.random_music(@music.techno)
          bot.api.send_message(chat_id: message.chat.id, text: @music.random_music(@music.techno).to_s)
          bot.api.send_message(chat_id: message.chat.id, text: 'Want to try again /music or want to try a diferent funtion /phrase /trivia or you want to /stop')
        when 'Hip-Hop'
          @music.random_music(@music.hiphop)
          bot.api.send_message(chat_id: message.chat.id, text: @music.random_music(@music.hiphop).to_s)
          bot.api.send_message(chat_id: message.chat.id, text: 'Want to try again /music or want to try a diferent funtion /phrase /trivia or you want to /stop')
        when 'Romantic'
          @music.random_music(@music.romantic)
          bot.api.send_message(chat_id: message.chat.id, text: @music.random_music(@music.romantic).to_s)
          bot.api.send_message(chat_id: message.chat.id, text: 'Want to try again /music or want to try a diferent funtion /phrase /trivia or you want to /stop')
        when '/phrase'
          question = 'Selec the country for the prhase'
          answers =
            Telegram::Bot::Types::ReplyKeyboardMarkup
              .new(keyboard: [%w[Colombian Japanese], %w[French]], one_time_keyboard: true)
          bot.api.send_message(chat_id: message.chat.id, text: question, reply_markup: answers)
        when 'Japanese'
          @phrase.random_phrase(@phrase.japanes)
          bot.api.send_message(chat_id: message.chat.id, text: @phrase.random_phrase(@phrase.japanes).to_s)
          bot.api.send_message(chat_id: message.chat.id, text: 'Want to try again /phrase or want to try a diferent funtion /music /trivia or you want to /stop')
        when 'Colombian'
          @phrase.random_phrase(@phrase.colombian)
          bot.api.send_message(chat_id: message.chat.id, text: @phrase.random_phrase(@phrase.colombian).to_s)
          bot.api.send_message(chat_id: message.chat.id, text: 'Want to try again /phrase or want to try a diferent funtion /music /trivia or you want to /stop')
        when 'French'
          @phrase.random_phrase(@phrase.french)
          bot.api.send_message(chat_id: message.chat.id, text: @phrase.random_phrase(@phrase.french).to_s)
          bot.api.send_message(chat_id: message.chat.id, text: 'Want to try again /phrase or want to try a diferent funtion /music /trivia or you want to /stop')
        when '/stop'
          kb = Telegram::Bot::Types::ReplyKeyboardRemove.new(remove_keyboard: true)
          bot.api.send_message(chat_id: message.chat.id, text: "Sorry to see you go, Bye, #{message.from.first_name} :(", reply_markup: kb)
          bot.api.send_message(chat_id: message.chat.id, text: '😭', reply_markup: kb)

        end
      end
    end
  end
end

# rubocop:enable Metrics/CyclomaticComplexity
