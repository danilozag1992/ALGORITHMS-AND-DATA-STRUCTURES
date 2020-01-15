# You will be given a positive integer number . 
# Fill in the method sum so that it adds up all the positive 
# integers up to number and returns the sum.
# For example, when given 4 it should return 10 (4+3+2+1).

def sum(number)
    if number == 0
        return 0 
    else 
        return number + sum(number-1)
    end
end
puts sum(4)
puts sum(10)
