require_relative 'trivias'

class BotTrivias
  @triv = Trivias.new
  Telegram::Bot::Client.run(@token) do |bot|
    bot.listen do |message|
      case message.text
      when '/trivia'
        @answers = Telegram::Bot::Types::ReplyKeyboardMarkup.new(keyboard: [%w[A B], %w[C D]], one_time_keyboard: true)
        bot.api.send_message(chat_id: message.chat.id, text: @triv.triv_pick(@triv.trivia), reply_markup: @answers)
      when 'A'
        bot.api.send_message(chat_id: message.chat.id, text: "The correct answer is #{@triv.ans(@triv.trivia)}")
        bot.api.send_message(chat_id: message.chat.id, text: @triv.triv_pick(@triv.trivia), reply_markup: @answers)
        bot.api.send_message(chat_id: message.chat.id, text: 'Want to try a diferent funtion /music /prhase or you want to /stop')
      when 'B'
        bot.api.send_message(chat_id: message.chat.id, text: "The correct answer is #{@triv.ans(@triv.trivia_ans)}")
        bot.api.send_message(chat_id: message.chat.id, text: @triv.triv_pick(@triv.trivia), reply_markup: @answers)
        bot.api.send_message(chat_id: message.chat.id, text: 'Want to try a diferent funtion /music /prhase or you want to /stop')
      when 'C'
        bot.api.send_message(chat_id: message.chat.id, text: "The correct answer is #{@triv.ans(@triv.trivia_ans)}")
        bot.api.send_message(chat_id: message.chat.id, text: @triv.triv_pick(@triv.trivia), reply_markup: @answers)
        bot.api.send_message(chat_id: message.chat.id, text: 'Want to try a diferent funtion /music /prhase or you want to /stop')
      when 'D'
        bot.api.send_message(chat_id: message.chat.id, text: "The correct answer is #{@triv.ans(@triv.trivia_ans)}")
        bot.api.send_message(chat_id: message.chat.id, text: @triv.triv_pick(@triv.trivia), reply_markup: @answers)
        bot.api.send_message(chat_id: message.chat.id, text: 'Want to try a diferent funtion /music /prhase or you want to /stop')
      end
    end
  end
end
