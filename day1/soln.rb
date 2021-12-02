i, m=File.readlines("input").map! { |x| x.strip.to_i }, Float::INFINITY
p i.inject([0, m]) { |i, x| [i[0] + (x > i[-1] ? 1 : 0), x] }[0]
p i.inject([0, m, m, m]) { |i, x| [i[0] + (x > i[1] ? 1 : 0), i[2], i[3], x] }[0]
