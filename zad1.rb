# str1 = "hello"
# str2 = "hell"

# # puts str1[1].chr
# # puts str1.size




# if str1 == str2
# 	puts "equal"
# elsif str1 > str2
# 	str1.split("").each do |f|
# 		# if(str1[f].chr == str2[f].chr)
# 		# 	puts "a"
# 		# end

# 		puts f.index(f)
# 	end
# end

# def levenshtein_distance(s, t)
#   m = s.length
#   n = t.length
#   return m if n == 0
#   return n if m == 0
#   d = Array.new(m+1) {Array.new(n+1)}

#   (0..m).each {|i| d[i][0] = i}
#   (0..n).each {|j| d[0][j] = j}
#   (1..n).each do |j|
#     (1..m).each do |i|
#       d[i][j] = if s[i-1] == t[j-1]  # adjust index into string
#                   d[i-1][j-1]       # no operation required
#                 else
#                   [ d[i-1][j]+1,    # deletion
#                     d[i][j-1]+1,    # insertion
#                     d[i-1][j-1]+1,  # substitution
#                   ].min
#                 end
#     end
#   end
#   d[m][n]
# end

# [ ['fire','water'], ['amazing','horse'], ["bamerindos", "giromba"] ].each do |s,t|
#   puts "levenshtein_distance('#{s}', '#{t}') = #{levenshtein_distance(s, t)}"
# end


# def levenshtein(string1, string2)
# 	a = 0
# 	length1 = string1.length
# 	length2 = string2.length
# 	tab = Array.new(length1+1) {Array.new(length2+1)}

# 	(0..length1).each {|i| tab[i][0] = i}
# 	(0..length2).each {|j| tab[0][j] = j}

# 	puts tab
	
# 	if(string1==string2)
# 		puts "strings are equal."
# 	elsif string1 > string2
# 		(0..length1).each do |i|
# 			puts string1[i]
# 			(0..length2).each do |j|
# 				puts string2[j]
# 				if(string1[i-1] == string2[j-1])
# 					puts "not the same char"
# 				else
# 					a = a + 1
# 				end
# 			end
# 		end
# 	end
# 	puts a	
# end

# levenshtein("pies", "kot")

# def levenshtein(str1, str2)
#   m, n = str1.length, str2.length
#   return m if n == 0
#   return n if m == 0

#   d = Array.new(m+1) {Array.new(n+1)}
#   0.upto(m) { |i| d[i][0] = i }
#   0.upto(n) { |j| d[0][j] = j }

#   1.upto(n) do |j|
#     1.upto(m) do |i|
#       d[i][j] = str1[i-1] == str2[j-1] ? d[i-1][j-1] : [d[i-1][j]+1,d[i][j-1]+1,d[i-1][j-1]+1,].min
#     end
#   end
#   puts d[m][n]
# end

# levenshtein("kot", "pies")
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
