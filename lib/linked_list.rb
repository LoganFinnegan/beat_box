class LinkedList
    attr_reader :head, :list
    def initialize()
        @head = nil
    end

    def append(data) #add's node object to head
        new_node = Node.new(data)
       if @head == nil 
        @head = new_node
       else
        current = @head
        while current.next_node != nil
            current = current.next_node
        end
        current.next_node = new_node
    end

        #in to string method pulling head.data needs. to go though linked list one node at time and create a new string untill next node in nil and gather data value to create string representation of all nodes in list. to sting will likely need if method to collect second string
    
    end

    def count
        count = 0
        if @head == nil
           count = 0 
        else
            count = 1
            current_node = @head
            while current_node.next_node != nil
                count += 1
                current_node = current_node.next_node
            end
            count
        end
    end

    def to_string
        string = ""
        current = @head
        while current != nil
            string << current.data.to_s + " "
            current = current.next_node
        end
        return string.strip
    end  
end


