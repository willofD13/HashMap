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

    def replace_value(node,value)
        node.value = value 
    end

    def traverse(key, value)
        node = head
        until node.nil? do
            if node.key != key && node.next.nil?
                append(node,key,value)
                break
            elsif node.key == key
                replace_value(node,value)
                break
            else
                node = node.next
            end
        end
    end

    
    def find(key)
        node = head

        until node.nil? do
            if node.key == key
                break
            else
                node = node.next
            end
        end

        node
    end
end