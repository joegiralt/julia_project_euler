function MultiplesOfThreeAndFiveBelow(num)
    sum_of_all = 0
    for i = 1:num
        if ((i%5==0) || (i%3==0))
            sum_of_all += i
        end
    end    
    return sum_of_all
end

MultiplesOfThreeAndFiveBelow(999)
