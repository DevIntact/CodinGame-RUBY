
# https://www.codingame.com/training/easy/the-river-i-

r_1 = gets.to_i
r_2 = gets.to_i

g=[r_1]
h=[r_2]

(1..99999).map{
    g<<g[_1-1]+(g[_1-1].digits).sum
}
(1..99999).map{
    h<<h[_1-1]+(h[_1-1].digits).sum
}

z=g.intersection(h)
p z[0]