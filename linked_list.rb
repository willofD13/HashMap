class Node
    attr_accessor :key, :value, :next

    def initialize(key,value)
        @key = key 
        @value = value
        @next = nil
    end 

end

class LinkedList
    attr_accessor :head

    def initialize(key,value)
        @head = Node.new(key,value) 
    end
end