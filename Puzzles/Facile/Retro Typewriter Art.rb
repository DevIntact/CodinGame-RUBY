
# https://www.codingame.com/training/easy/retro-typewriter-art

s = gets.chomp.split

r={'sp'=>' ','bS'=>'\\','sQ'=>"'",'nl'=>"\n"}

s.map{
    x=_1[0]
    if !x.match?(/[[:digit:]]/)
        x=1
        a=_1
    else
        z=_1.tr('0-9','')
        if z.empty?
            x=_1[0..-2]
            a=_1[-1]
        else
            x=_1.tr('^0-9','')
            a=_1.tr('0-9','')
        end
    end

    if r.key?(a)
        print r[a]*x.to_i
    else
        print a*x.to_i
    end
}