def first_anagram?(str1, str2) # O(n!)
    permutations = str1.chars.permutation.to_a
    permutations.include?(str2.chars)
end

# p first_anagram?('gizmo', 'sally')    #=> false
# p first_anagram?("elvis", "lives")    #=> true

def second_anagram?(str1, str2)
    str1.each_char do |char|
        if str2.index(char)
            str2[str2.index(char)] = ""
        else
            return false
        end
    end

    str2 == "" ? true : false
end

# p second_anagram?('gizmo', 'sally')    #=> false
# p second_anagram?("elvis", "lives")    #=> true

def third_anagram?(str1, str2)
    str1.chars.sort == str2.chars.sort
end

# p third_anagram?('gizmo', 'sally')    #=> false
# p third_anagram?("elvis", "lives")    #=> true

def fourth_anagram?(str1, str2)
    hash1 = Hash.new(0)
    # hash2 = Hash.new(0)
    
    str1.each_char {|char| hash1[char] += 1}
    str2.each_char {|char| hash1[char] -= 1}

    hash1.each_value.all? { |val| val == 0 }
end

# p fourth_anagram?('gizmo', 'sally')    #=> false
# p fourth_anagram?("elvis", "lives")    #=> true