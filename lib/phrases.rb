require_relative 'bot.rb'

class Phrases
    attr_reader :japanes, :french, :colombian

    def initialize
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
            "One of the most popular Colombian phrases is “dar papaya” or to give papaya. This usually refers to safety or crime; if given the opportunity to take something, someone will, so don’t leave your wallet in your back pocket in busy areas.",
            "Colombians say “que pena con usted” with the same frequency people from the US say they’re sorry, so it’s more of a habit than a real apology.",            
            "If you want someone to leave because you’re angry with them you say, “Largate!”, or get out of here.",            
            "Instead of telling you to be careful, a Colombian would tell you to put your batteries in: ponte las pilas!",            
            "If a Colombian messes up or makes a mistake, they “shit it”: “la cagué.”",            
            "If something is really embarrassing, Colombians say, “Que oso!” In English that’s, “What a bear!”"
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
            “Being a fool sometimes does not make one a fool all the time.”",
        ]
        
    end

    def random_phrase(category)
        @result = category.sample 
        @result
    end
end