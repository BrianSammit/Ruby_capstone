require_relative 'bot.rb'

class Trivias
  attr_reader :trivia, :trivia_ans

  def initialize
    @trivia = ['Romantic poet Percy Bysshe Shelley drowned, aged 29, in 1822, off the coast of WHERE?
            A. Portugal
            B. Italy
            C. Spain
            D. France',
               'Which of these British monarchs was the first to broadcast a Christmas message?
            A. Elizbeth I
            B. Gorge V
            C. Victoria
            D. Edward VII',
               'What type of aircraft was the "LZ 129 Hindenburg", destroyed by fire while landing in May 1937?
            A. Helicopter
            B. Passenger jet
            C. Zeppelin
            D. Flying boat',
               'What are the Elgin Marbles?
            A. Elizbeth I
            B. Gorge V
            C. Victoria
            D. Edward VII',
               'Which of these British monarchs was the first to broadcast a Christmas message?
            A. Famous Australian boulders
            B. Paris museum
            C. Norther Ireland landmark
            D. Greek sculptures',
               'The "Santa Maria" and the "Pinta" were two of the three ships Columbus used on his voyage to America. What was the third?
            A. Nina
            B. Belle
            C. Monte Cristo
            D. Isabella',
               'What Soviet leader died in 1953?
            A. Lenin
            B. Stalin
            C. Marx
            D. Trotsky',
               'Which of these ancient cultures was NOT present in the Americas?
            A. Incan
            B. Aztec
            C. Mayan
            D. Minoan',
               'Which French monarch was known as "The Sun King"?
            A. Charles X
            B. Louis XVI
            C. Louis-Philippe
            D. Louis XIV',
               'Before finding fame, Louis Vuitton worked as a luggage packer for which Imperial family?
            A. House of Osman
            B. Bonaparte
            C. Ming
            D. Romanov',
               'Which English king did Guy Fawkes plot to kill?
            A. Charles 11
            B. Charles 1
            C. James1
            D. William 111']

    @trivia_ans = ['Italy', 'Gorge V']
  end

  def triv_pick(category)
    @result = category.sample
  end

  def ans(_category_ans)
    @ans
  end
end
