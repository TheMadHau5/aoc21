i = File.read("input").split(",").map { |x| x.to_i }.inject(Hash.new(0)) { |h, x| h[x] += 1; h }
80.times { i = i.inject(Hash.new(0)) { |x, (k, v)| k >= 0 ? (x[k - 1] = v) : nil; x }; i[-1] > 0 ? (i[6] += i[-1]; i[8] += i[-1]; i[-1] = 0; i) : i }; p i.values.inject(:+)
(256 - 80).times { i = i.inject(Hash.new(0)) { |x, (k, v)| k >= 0 ? (x[k - 1] = v) : nil; x }; i[-1] > 0 ? (i[6] += i[-1]; i[8] += i[-1]; i[-1] = 0; i) : i }; p i.values.inject(:+)
