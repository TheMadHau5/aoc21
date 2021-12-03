i=File.readlines("input")
p (0...12).map { |x| i.map { |s| s[x].to_i }.inject(:+) >= 500 ? [1, 0] : [0, 1] }.transpose.map { |x| x.join("").to_i(2) }.inject(:*)
o2=(0...12).inject(i) { |i, x| i.size == 1 ? i : p(i.select { |s| s[x] == (i.map { |s| s[x].to_i }.inject(:+) >= (i.size / 2.0) ? 1 : 0).to_s }) }[0].to_i(2)
co2=(0...12).inject(i) { |i, x| i.size == 1 ? i : p(i.select { |s| s[x] == (i.map { |s| s[x].to_i }.inject(:+) >= (i.size / 2.0) ? 0 : 1).to_s }) }[0].to_i(2)
p o2,co2,o2*co2
