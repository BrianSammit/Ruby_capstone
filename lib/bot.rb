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
          bot.api.send_message(chat_id: message.chat.id, text: "Hello #{message.from.first_name} I'm funzo bot that going to give you a random song, and random phrase. to start the bot type /start to stop it type /stop. Type /music or /phrase  then select one button. type /help if yoy need to see the commands")
        when '/help'
          bot.api.send_message(chat_id: message.chat.id, text: @options.sentences["commands"])
        when '/music'
          question = 'Selec what you want to heard'
          answers =
            Telegram::Bot::Types::ReplyKeyboardMarkup
              .new(keyboard: [%w[Rock Techno], %w[Hip-Hop Romantic]], one_time_keyboard: true)
          bot.api.send_message(chat_id: message.chat.id, text: question, reply_markup: answers)
        when 'Rock'
          bot.api.send_message(chat_id: message.chat.id, text: @options.random_select(@options.rock) )
          bot.api.send_message(chat_id: message.chat.id, text: @options.sentences["music_sentence"])
        when 'Techno'      
          bot.api.send_message(chat_id: message.chat.id, text: @options.random_select(@options.techno))
          bot.api.send_message(chat_id: message.chat.id, text: @options.sentences["music_sentence"])
        when 'Hip-Hop'
          bot.api.send_message(chat_id: message.chat.id, text: @options.random_select(@options.hiphop))
          bot.api.send_message(chat_id: message.chat.id, text: @options.sentences["music_sentence"])
        when 'Romantic'      
          bot.api.send_message(chat_id: message.chat.id, text: @options.random_select(@options.romantic))
          bot.api.send_message(chat_id: message.chat.id, text: @options.sentences["music_sentence"])
        when '/phrase'
          question = 'Selec the country for the prhase'
          answers =
            Telegram::Bot::Types::ReplyKeyboardMarkup
              .new(keyboard: [%w[Colombian Japanese], %w[French]], one_time_keyboard: true)
          bot.api.send_message(chat_id: message.chat.id, text: question, reply_markup: answers)
        when 'Japanese'    
          bot.api.send_message(chat_id: message.chat.id, text: @options.random_select(@options.japanes))
          bot.api.send_message(chat_id: message.chat.id, text: @options.sentences["phrase_sentence"])
        when 'Colombian'      
          bot.api.send_message(chat_id: message.chat.id, text: @options.random_select(@options.colombian))
          bot.api.send_message(chat_id: message.chat.id, text: @options.sentences["phrase_sentence"])
        when 'French'      
          bot.api.send_message(chat_id: message.chat.id, text: @options.random_select(@options.french))
          bot.api.send_message(chat_id: message.chat.id, text: @options.sentences["phrase_sentence"])
        when '/stop'
          kb = Telegram::Bot::Types::ReplyKeyboardRemove.new(remove_keyboard: true)
          bot.api.send_message(chat_id: message.chat.id, text: "Sorry to see you go #{message.from.first_name}, Bye", reply_markup: kb)
          bot.api.send_message(chat_id: message.chat.id, text: @options.sentences["emoji"])
        else 
          bot.api.send_message(chat_id: message.chat.id, text: @options.sentences["wrong_entry"])
        end
      end
    end
  end
end

# rubocop:enable Metrics/CyclomaticComplexity
