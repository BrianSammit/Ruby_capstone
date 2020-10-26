# rubocop:disable Metrics/CyclomaticComplexity

require 'telegram/bot'
require_relative 'random'

class Bot
  def initialize
    @token = '1350164700:AAFxaHPVzvJnbBLVguhiUDkWyakr2m2pyYA'
    @options = Random.new

    Telegram::Bot::Client.run(@token) do |bot|
      bot.listen do |message|
        case message.text
        when '/start'
          bot.api.send_message(chat_id: message.chat.id, text: "Hello, #{message.from.first_name} I'm funzo bot that going to give you a random song, and random phrase. to start the bot type /start to stop it type /stop. Type /music or /phrase  then select one button.")
        when '/music'
          question = 'Selec what you want to heard'
          answers =
            Telegram::Bot::Types::ReplyKeyboardMarkup
              .new(keyboard: [%w[Rock Techno], %w[Hip-Hop Romantic]], one_time_keyboard: true)
          bot.api.send_message(chat_id: message.chat.id, text: question, reply_markup: answers)
        when 'Rock'
          @options.random_select(@options.rock)
          bot.api.send_message(chat_id: message.chat.id, text: @options.random_select(@options.rock).to_s)
          bot.api.send_message(chat_id: message.chat.id, text: 'Want to try again /music or want to try a diferent funtion /phrase or you want to /stop')
        when 'Techno'
          @options.random_select(@options.techno)
          bot.api.send_message(chat_id: message.chat.id, text: @options.random_select(@options.techno).to_s)
          bot.api.send_message(chat_id: message.chat.id, text: 'Want to try again /music or want to try a diferent funtion /phrase or you want to /stop')
        when 'Hip-Hop'
          @options.random_select(@options.hiphop)
          bot.api.send_message(chat_id: message.chat.id, text: @options.random_select(@options.hiphop).to_s)
          bot.api.send_message(chat_id: message.chat.id, text: 'Want to try again /music or want to try a diferent funtion /phrase or you want to /stop')
        when 'Romantic'
          @options.random_select(@options.romantic)
          bot.api.send_message(chat_id: message.chat.id, text: @options.random_select(@options.romantic).to_s)
          bot.api.send_message(chat_id: message.chat.id, text: 'Want to try again /music or want to try a diferent funtion /phrase or you want to /stop')
        when '/phrase'
          question = 'Selec the country for the prhase'
          answers =
            Telegram::Bot::Types::ReplyKeyboardMarkup
              .new(keyboard: [%w[Colombian Japanese], %w[French]], one_time_keyboard: true)
          bot.api.send_message(chat_id: message.chat.id, text: question, reply_markup: answers)
        when 'Japanese'
         @options.random_select(@options.japanes)
          bot.api.send_message(chat_id: message.chat.id, text:@options.random_select(@options.japanes).to_s)
          bot.api.send_message(chat_id: message.chat.id, text: 'Want to try again /phrase or want to try a diferent funtion /music or you want to /stop')
        when 'Colombian'
         @options.random_select(@options.colombian)
          bot.api.send_message(chat_id: message.chat.id, text:@options.random_select(@options.colombian).to_s)
          bot.api.send_message(chat_id: message.chat.id, text: 'Want to try again /phrase or want to try a diferent funtion /music or you want to /stop')
        when 'French'
         @options.random_select(@options.french)
          bot.api.send_message(chat_id: message.chat.id, text:@options.random_select(@options.french).to_s)
          bot.api.send_message(chat_id: message.chat.id, text: 'Want to try again /phrase or want to try a diferent funtion /music or you want to /stop')
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
