require 'telegram/bot'
require_relative 'random'

class Bot
  def initialize
    @token = '1350164700:AAFxaHPVzvJnbBLVguhiUDkWyakr2m2pyYA'
    @random = Random.new
    Telegram::Bot::Client.run(@token) do |bot|
      bot.listen do |options_mp|
        case options_mp.text
        when '/start'
          bot.api.send_message(chat_id: options_mp.chat.id, text: @random.sentences['start_message'])
        when '/help'
          bot.api.send_message(chat_id: options_mp.chat.id, text: @random.sentences['commands'])
        when '/music'
          music
        when '/stop'
          kb = Telegram::Bot::Types::ReplyKeyboardRemove.new(remove_keyboard: true)
          bot.api.send_message(chat_id: options_mp.chat.id, text: @random.sentences['stop_message'], reply_markup: kb)
          bot.api.send_message(chat_id: options_mp.chat.id, text: @random.sentences['emoji'])
        else
          bot.api.send_message(chat_id: options_mp.chat.id, text: @random.sentences['wrong_entry'])
        end
      end
    end
  end

  def music
    Telegram::Bot::Client.run(@token) do |bot|
      bot.listen do |message|
        case message.text
        when '/music'
          answers = Telegram::Bot::Types::ReplyKeyboardMarkup
            .new(keyboard: [%w[Rock Techno], %w[Hip-Hop Romantic]], one_time_keyboard: true)
          bot.api.send_message(chat_id: message.chat.id, text: 'Select what you want to heard', reply_markup: answers)
        when 'Rock'
          bot.api.send_message(chat_id: message.chat.id, text: @random.random_select(@random.rock))
        when 'Techno'
          bot.api.send_message(chat_id: message.chat.id, text: @random.random_select(@random.techno))
        when 'Hip-Hop'
          bot.api.send_message(chat_id: message.chat.id, text: @random.random_select(@random.hiphop))
        when 'Romantic'
          bot.api.send_message(chat_id: message.chat.id, text: @random.random_select(@random.romantic))
        else
          initialize
        end
      end
    end
  end
end
