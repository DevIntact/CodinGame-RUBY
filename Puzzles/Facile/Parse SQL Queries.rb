
# https://www.codingame.com/training/easy/parse-sql-queries

s = gets.gsub(', ',',').sub(' = ','=').sub('ORDER BY','ORDERBY').split
rows = gets.to_i
t = gets.chomp.split
g=[]
rows.times do |i|
  g[i]={}
  r = gets.chomp.split
  t.each_with_index{ |v,k|
    g[i.to_i][v]=r[k.to_i]
  }
end

if s.include?('WHERE')

  a=s.index('WHERE')
  a=s[a+1].split('=')
  h=[]
  g.each_with_index { |v,k| v[a[0]] == a[1] ? h<<v : 0 }
  g=h
end

if s.include?('ORDERBY')

  a=s.index('ORDERBY')
  order = s[a+1]
  sort = s[a+2]
  if sort == 'DESC'
    g=g.sort_by! { |m| m[order].to_f }.reverse
  else
    g=g.sort_by! { |m| m[order].to_f }
  end

end

if s[1]!='*'

  c=s[1].split(',')
  t.each_with_index{ |v,k|
    !c.include?(v) ? ( g.each_with_index{ |m,e| g[e].delete(v) } ) : 0
  }
  t=c

end

puts t*' '
g.map{
  puts _1.values*' '
}