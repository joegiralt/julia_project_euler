function SumOfEvenFibSequenceBelow(num)
    fib_1 = 1
    fib_2 = 2
    fib_sum = 0
    answer = 0
    while fib_sum < num
        if fib_sum % 2 == 0
            answer = answer + fib_sum
        end
        fib_sum = fib_1 + fib_2
        fib_1 = fib_2
        fib_2 = fib_sum
    end
    return answer + 2
end
SumOfEvenFibSequenceBelow(4000000)