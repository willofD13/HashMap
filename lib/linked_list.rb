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

    def append(node,key,value)
        node.next = Node.new(key,value)
    end

    def traverse(key, value)
        node = head

        if node.key == key 
            node.value = value #replace the value of an existing key
        else
            if node.next.nil?
                append(node,key,value) # add a new node if the key doesn't exist
            end
            node = node.next
        end
    end
end