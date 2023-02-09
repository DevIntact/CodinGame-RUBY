
# https://www.codingame.com/training/easy/artificial-emotional-intelligence

name = gets

v='aeiouy'
c='bcdfghjklmnpqrstvwxz'

adjList = "Adaptable Adventurous Affectionate Courageous Creative Dependable Determined Diplomatic Giving Gregarious Hardworking Helpful Hilarious Honest Non-judgmental Observant Passionate Sensible Sensitive Sincere".downcase.split
goodList = "Love, Forgiveness, Friendship, Inspiration, Epic Transformations, Wins".downcase.split(', ')
badList = "Crime, Disappointment, Disasters, Illness, Injury, Investment Loss".downcase.split(', ')

m=name.downcase.tr('^'+v,'').chars.slice(0,2)
n=name.downcase.tr('^'+c,'').chars.uniq.slice(0,3)

if m.size < 2 || n.size < 3
    puts "Hello #{name}."
else
    m[0]=goodList[v.index(m[0])]
    m[1]=badList[v.index(m[1])]

    n[0]=adjList[c.index(n[0])]
    n[1]=adjList[c.index(n[1])]
    n[2]=adjList[c.index(n[2])]

    puts "It's so nice to meet you, my dear #{n[0]} #{name}.\nI sense you are both #{n[1]} and #{n[2]}.\nMay our future together have much more #{m[0]} than #{m[1]}."

end