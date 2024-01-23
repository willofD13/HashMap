class HashMap 
    def hash(string)
        hash_code = 0 
        prime_num = 31

        string.each_char { |char| hash_code = hash_code*prime_num + char.ord }

        hash_code
    end
end 

