class HashMap 
    attr_accessor :hash_table

    def initialize
        @hash_table = Array.new(16)
    end

    def hash(string)
        hash_code = 0 
        prime_num = 31

        string.each_char { |char| hash_code = hash_code*prime_num + char.ord }

        hash_code

        index = hash_code % @hash_table.size
        index
    end
end
