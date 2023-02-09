
# https://www.codingame.com/training/easy/isbn-check-digit

n = gets.to_i
g=[]
n.times do
  isbn = gets.chomp

  w=isbn.chars

  y=( isbn.include?('X') && isbn.index('X')!=w.size-1 ? 1 :0)

  e=isbn.size+1
  x=b=e==11?11:10
  a=w.pop
  if b==11
    d=w.sum{
      _1.to_i*x-=1
    }
  else
    d=0
    x=-1
    w.map{
      x+=1
      d+=x%2>0?_1.to_i*3:_1.to_i
    }
  end

  z=d%b>0?b-(d%b):0

  z=z==10?'X':z.to_s

  if z!=a || (isbn.length!=10 && isbn.length!=13) || y==1
    g<<isbn
  end

end

puts g.size.to_s+' invalid:'
puts g
