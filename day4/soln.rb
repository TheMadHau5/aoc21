i,b=nil,[];open("input") { |f| i=f.readline.split(",").map { |x| x.to_i }; 100.times { f.readline; b<<[]; 5.times { b[-1] << f.readline.strip.split(" ").map { |x| x.to_i } } } }
check = lambda { |b| (0...5).inject(false) { |a, i| (0...5).inject([true, true]) { |(c, d), j| [c && b[i][j].is_a?(String), d && b[j][i].is_a?(String)] }.inject(a, :|) } }
mark = lambda { |b, i| b.map { |r| r.map { |x| x == i ? x.to_s : x } } }
p catch(:win) { i.inject(b) { |b,i| b.map { |b| b=mark.(b, i); check.(b) ? throw(:win, [b, i]) : b } } }.map { |x| x.is_a?(Numeric) ? x : x.inject(0) { |i,r| r.each { |x| x.is_a?(Numeric) ? i += x : i }; i } }.inject(:*)
p catch(:loss) { i.inject(b) { |b,i| s = b.size; b.map { |b| b=mark.(b, i); check.(b) ? s == 1 ? throw(:loss, [b, i]) : nil : b }.compact } }.map { |x| x.is_a?(Numeric) ? x : x.inject(0) { |i,r| r.each { |x| x.is_a?(Numeric) ? i += x : i }; i } }.inject(:*)
