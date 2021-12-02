i=File.readlines("input").map { |x| m = x.match(/(.).*(\d+)/); [m[1], m[2].to_i] }
p i.inject([0, 0]) { |i, x| x[0] == "u" ? [i[0], i[1] - x[1]] : x[0] == "d" ? [i[0], i[1] + x[1]] : [i[0] + x[1], i[1]] }.inject(:*)
p i.inject([0, 0, 0]) { |i, x| x[0] == "u" ? [i[0], i[1], i[2] - x[1]] : x[0] == "d" ? [i[0], i[1], i[2] + x[1]] : [i[0] + x[1], i[1] + x[1] * i[2], i[2]] }[0..1].inject(:*)
