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

    def append(value)
        node_to_add = head 

        while node_to_add.next !=nil 
            node_to_add = node_to_add.next 
        end 

        node_to_add.next = Node.new(value)
    end
end