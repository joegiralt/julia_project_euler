# include 'names.txt'
alph         = ("a".."z").to_a
name_array   = []
name_scores  = []
score_hash   = {}


#finds, parses, alphabetize file to an array
File.open('names.txt', 'r') do |file_line|
  while line = file_line.gets
    line.split(",").each do |name|
      name_array << name.gsub!(/\W+/, '')
    end
  end
  name_array.sort_by! {|name| name.downcase!}
end


# creates a hash out of the alph 
# array assigning key values a = 1, b = 2 etc.
alph.each_with_index do |letter, index|
  score_hash[letter.to_sym] = index +1
end


# converts names into scores 
# and mulitplies scores by thier inexes and sums them
name_array.each_with_index do |name, index|
  name.each_char do |char_value|
    @name_score = []
    @name_score << score_hash[char_value.to_sym]
    name_scores  << (@name_score.reduce(:+)) * (index+1)
  end
end

p "The answer for problem 22 is: #{name_scores.reduce(:+)}"



# Using names.txt (right click and 'Save Link/Target As...'), 
# a 46K text file containing over five-thousand first names, 
# begin by sorting it into alphabetical order. 
# Then working out the alphabetical value for each name, 
# multiply this value by its alphabetical position in the list to obtain a name score.
# For example, when the list is sorted into alphabetical order, COLIN,
# which is worth 3 + 15 + 12 + 9 + 14 = 53, is the 938th name in the list. 
# So, COLIN would obtain a score of 938 × 53 = 49714.
# What is the total of all the name scores in the file?