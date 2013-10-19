function LongPal(x,y)
    temp = 0
    prod = 0
     for i = 1:x
        for n = 1:y
          temp = i * n
            if reverse(string(temp)) == string(temp) && temp >= prod
              prod = temp
                println(temp)
            end
          end
       end
    end
LongPal(999,999)   