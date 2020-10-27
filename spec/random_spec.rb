# rubocop:disable Layout/LineLength
require_relative '../lib/random'

describe Random do
  let(:random) { Random.new }

  context 'initialize' do
    it 'It checks if the array is equal' do
      expect(random.rock).to eq([
                                  'https://www.youtube.com/watch?v=zUzd9KyIDrM',
                                  'https://www.youtube.com/watch?v=vjVkXlxsO8Q',
                                  'https://www.youtube.com/watch?v=Aiay8I5IPB8',
                                  'https://www.youtube.com/watch?v=p0vM9iINl28',
                                  'https://www.youtube.com/watch?v=Sb5aq5HcS1A',
                                  'https://www.youtube.com/watch?v=Q0oIoR9mLwc',
                                  'https://www.youtube.com/watch?v=eVTXPUF4Oz4'
                                ])
    end
  end

  context 'initialize' do
    it 'It checks if the array is equal' do
      expect(random.rock).to_not eq([
                                      'https://www.youtube.com/watch?v=KxCG0d93kMg',
                                      'https://www.youtube.com/watch?v=Mw9yzHEONg4',
                                      'https://www.youtube.com/watch?v=hsA2KXIhDS4',
                                      'https://www.youtube.com/watch?v=N36U0fcOzTs',
                                      'https://www.youtube.com/watch?v=hNAuFef-ETg',
                                      'https://www.youtube.com/watch?v=ZrCyqIdUYeo&list=RDCLAK5uy_kLWIr9gv1XLlPbaDS965-Db4TrBoUTxQ8&start_radio=1',
                                      'https://www.youtube.com/watch?v=jB-zsM6aPPo&list=RDCLAK5uy_kLWIr9gv1XLlPbaDS965-Db4TrBoUTxQ8&index=3'
                                    ])
    end
  end

  context 'initialize' do
    it 'It checks if the array is equal' do
      expect(random.techno).to eq([
                                    'https://www.youtube.com/watch?v=KxCG0d93kMg',
                                    'https://www.youtube.com/watch?v=Mw9yzHEONg4',
                                    'https://www.youtube.com/watch?v=hsA2KXIhDS4',
                                    'https://www.youtube.com/watch?v=N36U0fcOzTs',
                                    'https://www.youtube.com/watch?v=hNAuFef-ETg',
                                    'https://www.youtube.com/watch?v=ZrCyqIdUYeo&list=RDCLAK5uy_kLWIr9gv1XLlPbaDS965-Db4TrBoUTxQ8&start_radio=1',
                                    'https://www.youtube.com/watch?v=jB-zsM6aPPo&list=RDCLAK5uy_kLWIr9gv1XLlPbaDS965-Db4TrBoUTxQ8&index=3'
                                  ])
    end
  end

  context 'initialize' do
    it 'It checks if the array is equal' do
      expect(random.techno).to_not eq([
                                        'https://www.youtube.com/watch?v=zUzd9KyIDrM',
                                        'https://www.youtube.com/watch?v=vjVkXlxsO8Q',
                                        'https://www.youtube.com/watch?v=Aiay8I5IPB8',
                                        'https://www.youtube.com/watch?v=p0vM9iINl28',
                                        'https://www.youtube.com/watch?v=Sb5aq5HcS1A',
                                        'https://www.youtube.com/watch?v=Q0oIoR9mLwc',
                                        'https://www.youtube.com/watch?v=eVTXPUF4Oz4'
                                      ])
    end
  end

  context 'initialize' do
    it 'It checks if the array is equal' do
      expect(random.hiphop).to eq([
                                    'https://www.youtube.com/watch?v=8AshnB1vq9c',
                                    'https://www.youtube.com/watch?v=l0U7SxXHkPY',
                                    'https://www.youtube.com/watch?v=wXhTHyIgQ_U',
                                    'https://www.youtube.com/watch?v=UYwF-jdcVjY',
                                    'https://www.youtube.com/watch?v=ZZ6VhTBcc-c&list=RDCLAK5uy_mVRuj5egfh21e-pXyA3ymx_0p4Xlg-c0I&start_radio=1',
                                    'https://www.youtube.com/watch?v=ArYlvBGI5Vk&list=RDCLAK5uy_mVRuj5egfh21e-pXyA3ymx_0p4Xlg-c0I&index=3',
                                    'https://www.youtube.com/watch?v=H2Po5uiZMco&list=RDCLAK5uy_mVRuj5egfh21e-pXyA3ymx_0p4Xlg-c0I&index=4'
                                  ])
    end
  end

  context 'initialize' do
    it 'It checks if the array is equal' do
      expect(random.hiphop).to_not eq([
                                        'https://www.youtube.com/watch?v=KxCG0d93kMg',
                                        'https://www.youtube.com/watch?v=Mw9yzHEONg4',
                                        'https://www.youtube.com/watch?v=hsA2KXIhDS4',
                                        'https://www.youtube.com/watch?v=N36U0fcOzTs',
                                        'https://www.youtube.com/watch?v=hNAuFef-ETg',
                                        'https://www.youtube.com/watch?v=ZrCyqIdUYeo&list=RDCLAK5uy_kLWIr9gv1XLlPbaDS965-Db4TrBoUTxQ8&start_radio=1',
                                        'https://www.youtube.com/watch?v=jB-zsM6aPPo&list=RDCLAK5uy_kLWIr9gv1XLlPbaDS965-Db4TrBoUTxQ8&index=3'
                                      ])
    end
  end

  context 'initialize' do
    it 'It checks if the array is equal' do
      expect(random.romantic).to eq([
                                      'https://www.youtube.com/watch?v=lp-EO5I60KA&list=PL64G6j8ePNureM8YCKy5nRFyzYf8I2noy',
                                      'https://www.youtube.com/watch?v=2Vv-BfVoq4g&list=PL64G6j8ePNureM8YCKy5nRFyzYf8I2noy&index=2',
                                      'https://www.youtube.com/watch?v=KRMOPcaIfuI&list=PL64G6j8ePNureM8YCKy5nRFyzYf8I2noy&index=3',
                                      'https://www.youtube.com/watch?v=450p7goxZqg&list=PL64G6j8ePNureM8YCKy5nRFyzYf8I2noy&index=4',
                                      'https://www.youtube.com/watch?v=0yW7w8F2TVA&list=PL64G6j8ePNureM8YCKy5nRFyzYf8I2noy&index=5',
                                      'https://www.youtube.com/watch?v=Pkh8UtuejGw&list=PL64G6j8ePNureM8YCKy5nRFyzYf8I2noy&index=6',
                                      'https://www.youtube.com/watch?v=SnAOVJeg-yE&list=PL64G6j8ePNureM8YCKy5nRFyzYf8I2noy&index=7'
                                    ])
    end
  end

  context 'initialize' do
    it 'It checks if the array is equal' do
      expect(random.romantic).to_not eq([
                                          'https://www.youtube.com/watch?v=KxCG0d93kMg',
                                          'https://www.youtube.com/watch?v=Mw9yzHEONg4',
                                          'https://www.youtube.com/watch?v=hsA2KXIhDS4',
                                          'https://www.youtube.com/watch?v=N36U0fcOzTs',
                                          'https://www.youtube.com/watch?v=hNAuFef-ETg',
                                          'https://www.youtube.com/watch?v=ZrCyqIdUYeo&list=RDCLAK5uy_kLWIr9gv1XLlPbaDS965-Db4TrBoUTxQ8&start_radio=1',
                                          'https://www.youtube.com/watch?v=jB-zsM6aPPo&list=RDCLAK5uy_kLWIr9gv1XLlPbaDS965-Db4TrBoUTxQ8&index=3'
                                        ])
    end
  end

  context 'initialize' do
    it 'It checks if the array is equal' do
      expect(random.colombian).to eq([
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
      expect(random.colombian).to_not eq([
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

  context 'initialize' do
    it 'It checks if the array is equal' do
      expect(random.french).to eq([
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

  context 'initialize' do
    it 'It checks if the array is equal' do
      expect(random.french).to_not eq([
                                        'One of the most popular Colombian phrases is “dar papaya” or to give papaya. This usually refers to safety or crime; if given the opportunity to take something, someone will, so don’t leave your wallet in your back pocket in busy areas.',
                                        'Colombians say “que pena con usted” with the same frequency people from the US say they’re sorry, so it’s more of a habit than a real apology.',
                                        'If you want someone to leave because you’re angry with them you say, “Largate!”, or get out of here.',
                                        'Instead of telling you to be careful, a Colombian would tell you to put your batteries in: ponte las pilas!',
                                        'If a Colombian messes up or makes a mistake, they “shit it”: “la cagué.”',
                                        'If something is really embarrassing, Colombians say, “Que oso!” In English that’s, “What a bear!”'
                                      ])
    end
  end

  context 'random_select' do
    it 'It checks if the array is equal to the array' do
      expect(random.random_select(random.rock).class).to be String
    end
  end

  context 'random_select' do
    it 'It checks if the array is equal to the array' do
      expect(random.random_select(random.rock).class).to_not be Numeric
    end
  end

  context 'random_select' do
    it 'It checks if the array is equal to the array' do
      expect(random.random_select(random.techno).class).to be String
    end
  end

  context 'random_select' do
    it 'It checks if the array is equal to the array' do
      expect(random.random_select(random.techno).class).to_not be Numeric
    end
  end

  context 'random_select' do
    it 'It checks if the array is equal to the array' do
      expect(random.random_select(random.hiphop).class).to be String
    end
  end

  context 'random_select' do
    it 'It checks if the array is equal to the array' do
      expect(random.random_select(random.hiphop).class).to_not be Numeric
    end
  end

  context 'random_select' do
    it 'It checks if the array is equal to the array' do
      expect(random.random_select(random.romantic).class).to be String
    end
  end

  context 'random_select' do
    it 'It checks if the array is equal to the array' do
      expect(random.random_select(random.romantic).class).to_not be Numeric
    end
  end

  context 'random' do
    it 'It checks if the array is equal to the array' do
      expect(random.random_select(random.japanes).class).to be String
    end
  end

  context 'random' do
    it 'It checks if the array is equal to the array' do
      expect(random.random_select(random.japanes).class).to_not be Numeric
    end
  end

  context 'random_random' do
    it 'It checks if the array is equal to the array' do
      expect(random.random_select(random.colombian).class).to be String
    end
  end

  context 'random_random' do
    it 'It checks if the array is equal to the array' do
      expect(random.random_select(random.colombian).class).to_not be Numeric
    end
  end
end

# rubocop:enable Layout/LineLength
