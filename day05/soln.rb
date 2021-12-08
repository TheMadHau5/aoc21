i,b=File.readlines("input").map { |l| a=l.split(" -> ").map { |x| x.split(",").map { |x| x.to_i } }.transpose.map { |x| x[0]..x[1] } }, Array.new(1000) { Array.new(1000, 0) }
iter = lambda { |r| (r.begin.upto(r.end).to_a + r.begin.downto(r.end).to_a).uniq }
i.select { |x| x[0].begin == x[0].end || x[1].begin == x[1].end }.each { |i| iter.(i[1]).each { |y| iter.(i[0]).each { |x| b[y][x] += 1 } } }
p b.map { |x| x.select { |i| i > 1 }.size }.inject(:+)
i.select { |x| x[0].begin != x[0].end && x[1].begin != x[1].end }.each { |x| x = x.map { |r| iter.(r) }; x[0].size.times { |i| b[x[1][i]][x[0][i]] += 1 } }
p b.map { |x| x.select { |i| i > 1 }.size }.inject(:+)
