require_relative '../lib/phrases'

describe Phrases do
  let(:phrase) { Phrases.new }

  context 'initialize' do
    it 'It checks if the array is equal' do
        expect(phrase.colombian).to eq([
                                        'One of the most popular Colombian phrases is “dar papaya” or to give papaya. This usually refers to safety or crime; if given the opportunity to take something, someone will, so don’t leave your wallet in your back pocket in busy areas.',
                                        'Colombians say “que pena con usted” with the same frequency people from the US say they’re sorry, so it’s more of a habit than a real apology.',
                                        'If you want someone to leave because you’re angry with them you say, “Largate!”, or get out of here.',
                                        'Instead of telling you to be careful, a Colombian would tell you to put your batteries in: ponte las pilas!',
                                        'If a Colombian messes up or makes a mistake, they “shit it”: “la cagué.”',
                                        'If something is really embarrassing, Colombians say, “Que oso!” In English that’s, “What a bear!”'
                                        ])
    end
  end

  context 'initialize' do
    it 'It checks if the array is equal' do
        expect(phrase.french).to eq([
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
                                        ])
    end
  end


  context 'random_phrase' do
    it 'It checks if the array is equal to the array' do
      expect(phrase.random_phrase(phrase.japanes).class).to eq(String)
    end
  end

  context 'random_phrase' do
    it 'It checks if the array is equal to the array' do
      expect(phrase.random_phrase(phrase.colombian).class).to eq(String)
    end
  end
end
