
# https://www.codingame.com/training/easy/ascii-art

l = gets.to_i
h = gets.to_i
t = gets.chomp.upcase.chars
g=[]
h.times do
  row = gets.chomp
  g<<row.chars.each_slice(l).map(&:join)
end

r=('A'..'Z').to_a
r<<'?'
h.times do
  |i|
  puts t.map{
    x=r.index(_1)
    !x.nil? ? g[i][x] : g[i][26]
  }*''
end