#calculating factorial using lambda function

fac = lambda { |n| n == 1 ? 1 : n * fac.call(n - 1) }
fac.call(5)