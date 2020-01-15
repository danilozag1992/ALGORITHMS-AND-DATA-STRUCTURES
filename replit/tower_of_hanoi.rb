def move(starting, goal)
    # your code here
    # this first line will isolate empty tower
    # thanks to that we can move starting element
    # to empty tower,after that we are able to move 
    # hardest disk on desired tower, goal tower in this 
    # case tower 3
    
   isolate  = ([1,2,3] - [starting, goal]).first
      
    print  "#{starting}->#{isolate}"
    print  " #{starting}->#{goal}"
    print  " #{isolate}->#{goal}"
  
end
  
  puts move(1, 3)
  # => 1->2 1->3 2->3
  
  puts move(2, 3)
  # => 2->1 2->3 1->3