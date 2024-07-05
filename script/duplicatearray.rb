arr = [1, 1, 1, 2, 3, 4, 5, 5]

freq = arr.inject(Hash.new(0)) { |h,v| h[v] += 1; h }
arr.max_by { |v| freq[v] }