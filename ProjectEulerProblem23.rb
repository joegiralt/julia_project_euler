the_beginning = Time.now

def properdivisor(num)
  divisors = [1]
  n_sqrt = Math.sqrt(num)
  (2..n_sqrt). each do |int|
    if num % int == 0
      if num/int == int
        divisors << int
      else
        divisors << int
        divisors << num/int
      end
    end
  end
  divisors
end

def find_abundant_nums(range)
  abundant_nums = [12]
  range.each do |num|
    if properdivisor(num).reduce(:+) > num
      abundant_nums << num
    end
  end
  abundant_nums
end

@abundant_nums = find_abundant_nums(13..20161)

@answer = [1..23]
(24..20161).each do |num|
  found = false
  @abundant_nums.each do |ab_num|
    if @abundant_nums.include?(num - ab_num)
      found = true 
      break
    end
  end
  if found == false
    p num
    @answer << num
  end
end


the_end = Time.now
total_run_time  = the_end - the_beginning

"the answer for problem for 23 #{@answer.reduce(:+)}"
"the time run is #{total_run_time}"







# p (1..28123).inject(:+) 


#(1..28123).inject(:+)







the_end= Time.now
total_run_time = the_end - the_beginning

p "The total run time is #{total_run_time} seconds"
# p "The answer for problem 23 is: #{(1..28123).inject(:+) - subtraction.uniq}"