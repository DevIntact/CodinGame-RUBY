
# https://www.codingame.com/training/easy/frame-the-picture

f = gets.chomp.chars

h, w = gets.split(" ").collect { |x| x.to_i }
g=[]
a=''

(0...f.size).map{ |i|
  s=''
  (0..i).map { s+=f[_1] }
  g<<s+f[i]*(w+2+f.size*2-s.size*2)+s.reverse
  a=s
}

g<<a+' '*(w+2+f.size*2-a.size*2)+a.reverse

puts g

h.times do
  line = gets.chomp
  puts a+' '+line+' '+a.reverse
end

puts g.reverse