
# https://www.codingame.com/training/easy/binary-image

g=[]
z=[]

h = gets.to_i
h.times do
  row = gets.chomp.split.map(&:to_i)
  g<<row.sum
  z<<row
end

if g.uniq.size != 1
  puts 'INVALID'
else
  z.map{
    s=''
    _1.each_with_index{ |m,k| s+=(k%2>0?'O':'.')*m }
    puts s
  }
end