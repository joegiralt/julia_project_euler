function FindLargestPrimeFactor(num)
    factor_dictionary = factor(num)
    return maximum(factor_dictionary)[1]
end

FindLargestPrimeFactor(600851475143)