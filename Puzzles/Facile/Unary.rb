
# https://www.codingame.com/training/easy/unary

e=''
gets.chomp.chars.map{
    e+=_1.ord.to_s(2).rjust(7,"0")
}
g=[]
x=1
e.chars.each_with_index.map { |y,i| 
    if i > 0

        if y!=e[i-1]

            g<<'0'*x
            g<<(y=='1'?'0':'00')
            x=1

        else
            x+=1
        end

    else
        g<<(y=='1'?'0':'00')
    end
}
g<<'0'*x
puts g*' '