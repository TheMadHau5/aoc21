i, n = [Array.new(102,10)] + File.readlines("input").map { |x| [10] + x.strip.split("").map { |x| x.to_i } + [10] } + [Array.new(102,10)], [[0,-1],[-1,0],[0,1],[1,0]]
p (1..100).map { |y| (1..100).map { |x| k = i[y][x]; n.map { |(nx,ny)| i[y+ny][x+nx] }.min > k ? (k + 1) : 0 } }.flatten.inject(:+)
