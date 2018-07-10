puts "Insert strings"
str1 = gets
str2 = gets
m, n = str1.length, str2.length
return m if n == 0
return n if m == 0

d = Array.new(m+1) {Array.new(n+1)}
0.upto(m) { |i| d[i][0] = i }
0.upto(n) { |j| d[0][j] = j }

1.upto(n) do |j|
1.upto(m) do |i|
  d[i][j] = str1[i-1] == str2[j-1] ? d[i-1][j-1] : [d[i-1][j]+1,d[i][j-1]+1,d[i-1][j-1]+1,].min
end
end
puts d[m][n]
