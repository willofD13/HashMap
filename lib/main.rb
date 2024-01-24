require '../lib/linked_list'
class HashMap 
    attr_accessor :buckets

    def initialize
        @buckets = Array.new(16)
    end

    def hash(string)
        hash_code = 0 
        prime_num = 31

        string.each_char { |char| hash_code = hash_code*prime_num + char.ord }

        hash_code

        index = hash_code % @buckets.size
        index
    end

end
