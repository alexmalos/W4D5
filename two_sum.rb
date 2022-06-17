def bad_two_sum?(arr, target_sum)
    arr.each_with_index do |ele1, i|
        arr.each_with_index do |ele2, i2|
            return true if ele1 + ele2 == target_sum && i2 > i
        end
    end
    false
end

# arr = [0, 1, 5, 7]
# p bad_two_sum?(arr, 6) # => should be true
# p bad_two_sum?(arr, 10) # => should be false


def okay_two_sum?(arr, target_sum)
    
end

arr = [0, 1, 5, 7]
p okay_two_sum?(arr, 6) # => should be true
p okay_two_sum?(arr, 10) # => should be false