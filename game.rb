pages_with_questions = {}


lines_grabbed = ""

key = ""
File.open("story.txt", "r") do |infile|

  while (line = infile.gets)
    if line.index("~p")
    	key = line
    	lines_grabbed = ""
    else 
    	lines_grabbed += line
    end
   pages_with_questions[key] = lines_grabbed
  end
end

i = 1
while i == 1
p1 = pages_with_questions.select do |key, value|
	key.index("~p1")
end

p1.each do |k,v|
	puts v
end
puts "Type '1' to Use Gordon Ramsey's recipe"
puts "Type '2' to Whip up your own thing"
puts "Type '3' to Call your friend for a recipe"
answer = gets.chomp.to_s

if answer == "1"
	p2 = pages_with_questions.select { |key, value| key.index("~p2") }
	p2.each { |k,v| puts v }
elsif answer == "2"
	p3 = pages_with_questions.select { |key, value| key.index("~p3") }
	p3.each { |k,v| puts v }
else
	p4 = pages_with_questions.select { |key, value| key.index("~p4") }
	p4.each { |k,v| puts v }
end

puts "Would you like to go again?"
puts "'1' for Yes"
puts "'2' for No"

again = gets.chomp

if again == "1"
	i = 1
else puts "Fine"
	i = 2
end
end









