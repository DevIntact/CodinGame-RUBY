
# https://www.codingame.com/training/easy/caesar-is-the-chief

text_to_decode = gets.split
r=('A'..'Z').to_a
z=-1
text_to_decode.map{ |v|
    (0...26).map{ |i|
        s=''
        v.chars.map{
            s+=r[(r.index(_1)+i)%26]
        }
        s=='CHIEF' ? (z=i;break) : 0
    }
    z!=-1 ? (break) : 0
}

h=[]
if z!=-1
    text_to_decode.map{ |v|
        s=''
        v.chars.map{
            s+=r[(r.index(_1)+z)%26]
        }
        h<<s
    }
    puts h*' '
else
    puts 'WRONG MESSAGE'
end