i=File.readlines("input")
p (0...12).map { |x| i.map { |s| s[x].to_i }.inject(:+) >= 500 ? [1, 0] : [0, 1] }.transpose.map { |x| x.join("").to_i(2) }.inject(:*)
p ({0=>i,1=>i}).map { |k,v| (0...12).inject(v) { |i, x| i.size == 1 ? i : i.select { |s| s[x] == (i.map { |s| s[x].to_i }.inject(:+) >= (i.size / 2.0) ? 1 - k : k).to_s } }[0].to_i(2) }.inject(:*)
