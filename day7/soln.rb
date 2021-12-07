i = File.read("input").split(",").map { |x| x.to_i }.sort
p i.map { |x| (x - i[i.size / 2]).abs }.inject(:+)
p (i.min..i.max).map { |a| i.map { |x| d = (x - a).abs; d * (d + 1) / 2 }.inject(:+) }.min
