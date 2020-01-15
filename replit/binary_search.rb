def sqrt(number)
     sqrt_recursive(number)
end

# def sqrt_recursive(number,min_interval,max_interval)
#     min_interval = 0
#     max_interval = number
#     while max_interval - min_interval > 1 
#         mid = (max_interval + min_interval) / 2
#         if mid * mid <= number
#             min_interval = mid 
#         else
#             max_interval = mid 
#         end
#     end
#     return min_interval
# end

def sqrt_recursive(number, min_interval, max_interval)
    mid = (max_interval + min_interval) / 2
    if mid == number / mid 
        return mid 
    elsif mid > number/mid 
        sqrt_recursive(number, min_interval, mid)
    else
        sqrt_recursive(number, mid, max_interval)
    end
end

p sqrt(16)