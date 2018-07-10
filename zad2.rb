beer_num = 99
word = "bottles"
beer = ["one", "two", "three", "four", "five", "no more"]
puts "Insert loop numer: "
loop_val = gets

loop_val.to_i.times do
	while (beer_num > 0)
		if (beer_num > 5)
			puts beer_num.to_s + " " + word + " of the beer on the wall, " + beer_num.to_s + " " + word + " of beer."
			beer_num = beer_num - 1
			puts "Take one down and pass it round " + beer_num.to_s + " " + word + " of beer on the wall."
			puts ""
		elsif (beer_num > 2 && beer_num < 6)
			puts beer[beer_num - 1].capitalize + " " + word + " of the beer on the wall, " + beer[beer_num - 1] + " " + word + " of beer."
			beer_num = beer_num - 1
			puts "Take one down and pass it round " + beer[beer_num - 1] + " " + word + " of beer on the wall."
			puts ""
		elsif (beer_num == 2)	
			puts beer[beer_num - 1].capitalize + " " + word + " of the beer on the wall, " + beer[beer_num - 1] + " " + word + " of beer."
			word = "bottle"	
			beer_num = beer_num - 1
			puts "Take one down and pass it round " + beer[beer_num - 1] + " " + word + " of beer on the wall."
			puts ""
		else
			puts beer[beer_num - 1].capitalize + " " + word + " of beer on the wall, " + beer[beer_num - 1] + " " + word + " of beer."
			word = "bottles"
			beer_num = beer_num - 1
			puts "Take one down and pass it round " + beer[beer_num - 1] + " " + word + " of beer on the wall."
			puts ""
		end
	end

	if (beer_num == 0) 
		word = "bottles"
		puts beer[beer_num - 1].capitalize + " " + word + " of beer on the wall, " + beer[beer_num - 1] + " " + word + " of beer."
		beer_num = 99
		puts "Go to the store and buy some more, " + beer_num.to_s + " " + word + " of beer on the wall."
		puts ""
	end
end