i = File.readlines("input").map { |x| x.split(" | ").map { |x| x.split(" ").map { |x| x.split("").sort.join } } }
c, s = lambda { |n, c| n =~ /#{c.split("").join(".*")}/ }, {2 => 1, 3 => 7, 4 => 4, 7 => 8}
p i.map { |x| x[1].count { |x| s[x.size] } }.inject(:+)
p (i.inject(0) do |i, x|
  h={}; x[0].each { |x| h[s[x.size]] = x }
  x[0].each { |x| x.size == 6 && (c.(x, h[4]) ? h[9] = x : c.(x, h[7]) ? h[0] = x : h[6] = x) }
  x[0].each { |x| x.size == 5 && (c.(h[6], x) ? h[5] = x : c.(h[9], x) ? h[3] = x : h[2] = x) }
  h.delete(nil); h = h.invert; i + x[1].map { |x| h[x] }.join.to_i
end)
