
# https://www.codingame.com/training/easy/sudoku-validator

g={}
m={}

9.times do
  |i|
  g[i]=[]
end

3.times do
  |i|
  m[i]=[]
end

9.times do
  |i|
  inputs = gets.split.map &:to_i
  if inputs.uniq.size!=9 || inputs.sum!=45
    p false
    exit
  end

  inputs.each_with_index{ |v,j|
    g[j][i]=v
  }

  inputs.each_slice(3).each_with_index{ |v,j|
    m[j]<<v
  }

end
g.map{
  if _1[1].uniq.size!=9 || _1[1].sum!=45
    p false
    exit
  end
}

m.map{
  _2.each_slice(3).each_with_index{ |v,j|
    d=0
    v.map{|a| d+=a.sum}
    if d!=45
      p false
      exit
    end
  }
}

p true