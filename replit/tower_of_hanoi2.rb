def hanoi_steps(number_of_disks, a=1, b=2, c=3)
    if number_of_disks > 0
        hanoi_steps(number_of_disks-1,a,c,b)
        puts "#{a}->#{c}"
        hanoi_steps(number_of_disks-1,b,a,c)
    end
end
hanoi_steps(3)
hanoi_steps(2)