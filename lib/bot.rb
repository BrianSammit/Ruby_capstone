require 'telegram/bot'
require_relative 'random'

class Bot
  def initialize
    @token = '1350164700:AAFxaHPVzvJnbBLVguhiUDkWyakr2m2pyYA'
    @options = Random.new
    Telegram::Bot::Client.run(@token) do |bot|
      bot.listen do |options_mp|
        case options_mp.text
        when '/start'
          bot.api.send_message(chat_id: options_mp.chat.id, text: @options.sentences['start_message'])
        when '/help'
          bot.api.send_message(chat_id: options_mp.chat.id, text: @options.sentences['commands'])
        when '/music'
          music
        when '/stop'
          kb = Telegram::Bot::Types::ReplyKeyboardRemove.new(remove_keyboard: true)
          bot.api.send_message(chat_id: options_mp.chat.id, text: @options.sentences['stop_message'], reply_markup: kb)
          bot.api.send_message(chat_id: options_mp.chat.id, text: @options.sentences['emoji'])
        else
          bot.api.send_message(chat_id: options_mp.chat.id, text: @options.sentences['wrong_entry'])
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
          bot.api.send_message(chat_id: message.chat.id, text: @options.random_select(@options.rock))
        when 'Techno'
          bot.api.send_message(chat_id: message.chat.id, text: @options.random_select(@options.techno))
        when 'Hip-Hop'
          bot.api.send_message(chat_id: message.chat.id, text: @options.random_select(@options.hiphop))
        when 'Romantic'
          bot.api.send_message(chat_id: message.chat.id, text: @options.random_select(@options.romantic))
        else
          initialize
        end
      end
    end
  end
end

# rubocop:enable, Metrics/AbcSize
