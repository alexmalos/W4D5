def my_min1(arr) # O(n^2)
    arr.each do |el1|
        min = true
        arr.each do |el2|
            if el1 > el2
                min = false
                break
            end
        end
        return el1 if min
    end
end

def my_min2(arr) # O(n) 
    min = 0
    (0...arr.length - 1).each do |i|
        min = arr[i] if arr[i] < arr[i + 1] && arr[i] < min
    end
    min
end

list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
# p my_min1(list)
# p my_min2(list)

def largest_contiguous_subsum1(arr)
    sub_arrays = []
    (0...arr.length).each do |i|
        (i...arr.length).each do |j|
            sub_arrays << arr[i..j]
        end
    end
    max_sum = sub_arrays.first.sum
    sub_arrays.drop(1).each do |sub|
        if sub.sum > max_sum
            max_sum = sub.sum
        end
    end
    max_sum
end

# p largest_contiguous_subsum1([5, 3, -7]) # => 8
# p largest_contiguous_subsum1([2, 3, -6, 7, -6, 7]) # => 8
# p largest_contiguous_subsum1([-5, -1, -3]) # => -1

def largest_contiguous_subsum2(arr)
    return arr.max if arr.all?{|ele| ele < 0}
    largest_sum = arr.first
    current_sum = arr.first
    
    arr.drop(1).each do |ele|
        current_sum += ele
        current_sum = 0 if current_sum < 0
        largest_sum = current_sum if current_sum > largest_sum
    end

    largest_sum
end

# p largest_contiguous_subsum2([5, 3, -7]) # => 8
# p largest_contiguous_subsum2([2, 3, -6, 7, -6, 7]) # => 8
# p largest_contiguous_subsum2([-5, -1, -3]) # => -1