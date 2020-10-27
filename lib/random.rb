require_relative 'bot.rb'

class Random
  attr_reader :rock, :techno, :hiphop, :romantic, :japanes, :french, :colombian

  def initialize
    @rock = [
      'https://www.youtube.com/watch?v=zUzd9KyIDrM',
      'https://www.youtube.com/watch?v=vjVkXlxsO8Q',
      'https://www.youtube.com/watch?v=Aiay8I5IPB8',
      'https://www.youtube.com/watch?v=p0vM9iINl28',
      'https://www.youtube.com/watch?v=Sb5aq5HcS1A',
      'https://www.youtube.com/watch?v=Q0oIoR9mLwc',
      'https://www.youtube.com/watch?v=eVTXPUF4Oz4'
    ]

    @techno = [
      'https://www.youtube.com/watch?v=KxCG0d93kMg',
      'https://www.youtube.com/watch?v=Mw9yzHEONg4',
      'https://www.youtube.com/watch?v=hsA2KXIhDS4',
      'https://www.youtube.com/watch?v=N36U0fcOzTs',
      'https://www.youtube.com/watch?v=hNAuFef-ETg',
      'https://www.youtube.com/watch?v=ZrCyqIdUYeo&list=RDCLAK5uy_kLWIr9gv1XLlPbaDS965-Db4TrBoUTxQ8&start_radio=1',
      'https://www.youtube.com/watch?v=jB-zsM6aPPo&list=RDCLAK5uy_kLWIr9gv1XLlPbaDS965-Db4TrBoUTxQ8&index=3'
    ]

    @hiphop = [
      'https://www.youtube.com/watch?v=8AshnB1vq9c',
      'https://www.youtube.com/watch?v=l0U7SxXHkPY',
      'https://www.youtube.com/watch?v=wXhTHyIgQ_U',
      'https://www.youtube.com/watch?v=UYwF-jdcVjY',
      'https://www.youtube.com/watch?v=ZZ6VhTBcc-c&list=RDCLAK5uy_mVRuj5egfh21e-pXyA3ymx_0p4Xlg-c0I&start_radio=1',
      'https://www.youtube.com/watch?v=ArYlvBGI5Vk&list=RDCLAK5uy_mVRuj5egfh21e-pXyA3ymx_0p4Xlg-c0I&index=3',
      'https://www.youtube.com/watch?v=H2Po5uiZMco&list=RDCLAK5uy_mVRuj5egfh21e-pXyA3ymx_0p4Xlg-c0I&index=4'
    ]

    @romantic = [
      'https://www.youtube.com/watch?v=lp-EO5I60KA&list=PL64G6j8ePNureM8YCKy5nRFyzYf8I2noy',
      'https://www.youtube.com/watch?v=2Vv-BfVoq4g&list=PL64G6j8ePNureM8YCKy5nRFyzYf8I2noy&index=2',
      'https://www.youtube.com/watch?v=KRMOPcaIfuI&list=PL64G6j8ePNureM8YCKy5nRFyzYf8I2noy&index=3',
      'https://www.youtube.com/watch?v=450p7goxZqg&list=PL64G6j8ePNureM8YCKy5nRFyzYf8I2noy&index=4',
      'https://www.youtube.com/watch?v=0yW7w8F2TVA&list=PL64G6j8ePNureM8YCKy5nRFyzYf8I2noy&index=5',
      'https://www.youtube.com/watch?v=Pkh8UtuejGw&list=PL64G6j8ePNureM8YCKy5nRFyzYf8I2noy&index=6',
      'https://www.youtube.com/watch?v=SnAOVJeg-yE&list=PL64G6j8ePNureM8YCKy5nRFyzYf8I2noy&index=7'
    ]

    @japanes = [
      "案ずるより産むが易しい。
            Anzuru yori umu ga yasashii.
            Literally: Giving birth to a baby is easier than worrying about it.
            Meaning: Fear is greater than the danger. / An attempt is sometimes easier than expected",
      "出る杭は打たれる。
            Deru kugi wa utareru.
            Literally: The stake that sticks up gets hammered down.
            Meaning: If you stand out, you will be subject to criticism",
      "知らぬが仏。
            Shiranu ga hotoke.
            Literally: Not knowing is Buddha.
            Meaning: Ignorance is bliss. / What you don't know can't hurt you",
      "見ぬが花。
            Minu ga hana.
            Literally: Not seeing is a flower.
            Meaning: Reality can't compete with imagination",
      "花は桜木人は武士
            Hana wa sakuragi, hito wa bushi.
            Literally: Of flowers, the cherry blossom; of men, the warrior.
            Meaning: As the cherry blossom is considered foremost among flowers, so the warrior is foremost among men"
    ]

    @colombian = [
      'One of the most popular Colombian phrases is “dar papaya” or to give papaya. This usually refers to safety or crime; if given the opportunity to take something, someone will, so don’t leave your wallet in your back pocket in busy areas.',
      'Colombians say “que pena con usted” with the same frequency people from the US say they’re sorry, so it’s more of a habit than a real apology.',
      'If you want someone to leave because you’re angry with them you say, “Largate!”, or get out of here.',
      'Instead of telling you to be careful, a Colombian would tell you to put your batteries in: ponte las pilas!',
      'If a Colombian messes up or makes a mistake, they “shit it”: “la cagué.”',
      'If something is really embarrassing, Colombians say, “Que oso!” In English that’s, “What a bear!”'
    ]

    @french = [
      "À vaillant coeur rien d’impossible. -Jacques Cœur
            “For a valiant heart nothing is impossible",
      "Dans une grande âme tout est grand. -Blaise Pascal
            “In a great mind everything is great.”",
      "Chacun voit midi à sa porte. -French proverb
            “Everyone sees noon at his own door.”",
      "Je pense, donc je suis. -Rene Descartes
            “I think, therefore, I am.”",
      "On ne change pas une équipe qui gagne. -French proverb
            “One does not change a winning team.” In other words, if it ain’t broke, don’t fix it.",
      "Prouver que j’ai raison serait accorder que je puis avoir tort. -Pierre Augustin Caron de Beaumarchais
             “Proving that I am right would be admitting that I could be wrong.”",
      "On n’est point toujours une bête pour l’avoir été quelquefois. -Denis Diderot
            “Being a fool sometimes does not make one a fool all the time.”"
    ]
  end

  def random_select(category)
    @result = category.sample
  end

  def sentences
       sentences = {
             "commands" => "Here are the commands: \n /start \n /stop \n /music \n /phrase \n /help",
             "music_sentence" => "Want to try again /music or want to try a diferent funtion /phrase or you want to /stop",
             "phrase_sentence" => "Want to try again /phrase or want to try a diferent funtion /music or you want to /stop",
             "wrong_entry" => "Wrong entry, please entry one of this options:/start \n /music \n /prhase \n /stop \n /help",
             "emoji" => "😭"
       } 
  end
end
