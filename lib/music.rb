require_relative 'bot.rb'

class Music
    attr_reader :rock, :techno, :hiphop, :romantic
    
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
            'https://www.youtube.com/watch?v=H2Po5uiZMco&list=RDCLAK5uy_mVRuj5egfh21e-pXyA3ymx_0p4Xlg-c0I&index=4',
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
    end

    def random_music(category)
        @result = category.sample 
        @result
    end
end