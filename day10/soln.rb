i, h, r = File.readlines("input").each { |x| while x.gsub!(/<>|\(\)|\{\}|\[\]/,""); end }, {")"=>[3,1],"]"=>[57,2],"}"=>[1197,3],">"=>[25137,4]}, /[<({\[]([>)}\]])/
p i.map { |x| h[x.match(r).to_a[1]].to_a[0].to_i }.inject(:+)
a=i.reject { |x| x =~ r }.map { |x| x.strip.reverse.tr("<({[", ">)}]").split("").inject(0) { |i, c| i * 5 + h[c][1] } }.sort; p a[a.size/2]
