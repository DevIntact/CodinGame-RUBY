
# https://www.codingame.com/training/easy/reverse-minesweeper

w = gets.to_i
h = gets.to_i
g=[]
h.times do
  g<<gets.chomp.tr('.','0').chars
end

g.each_with_index { |v,k|

  v.each_with_index {|t,m|
  
    if t=='x'
      
      m+1<w && g[k][m+1]!='x'?g[k][m+1]=g[k][m+1].to_i+1:0
      m-1>=0 && g[k][m-1]!='x'?g[k][m-1]=g[k][m-1].to_i+1:0
      if k-1>=0
        m-1>=0 && g[k-1][m-1]!='x'?g[k-1][m-1]=g[k-1][m-1].to_i+1:0
        m+1<w && g[k-1][m+1]!='x'?g[k-1][m+1]=g[k-1][m+1].to_i+1:0
        g[k-1][m]!='x'?g[k-1][m]=g[k-1][m].to_i+1:0
      end
      if k+1<h
        m-1>=0 && g[k+1][m-1]!='x'?g[k+1][m-1]=g[k+1][m-1].to_i+1:0
        m+1<w && g[k+1][m+1]!='x'?g[k+1][m+1]=g[k+1][m+1].to_i+1:0
        g[k+1][m]!='x'?g[k+1][m]=g[k+1][m].to_i+1:0
      end
    end
    
  }

}
g.map{
  puts (_1*'').tr('0','.').tr('x','.')
}