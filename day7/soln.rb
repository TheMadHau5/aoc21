i = File.read("input").split(",").map { |x| x.to_i }.sort
p i.map { |x| (x - i[i.size / 2]).abs }.inject(:+)
