require "./lib/linked_list"
require "./lib/node"

RSpec.describe LinkedList do
    it 'exists' do
        list = LinkedList.new
        expect(list).to be_instance_of(LinkedList)
    end

    it 'contains head attribute' do
    list = LinkedList.new
    expect(list.head).to eq(nil)
    end

    # apend - creates a new node with the data
    #that we pass into this method and adds it to the 
    # end of the linked list
    
    it 'append method adds a node to the list' do
        list = LinkedList.new
        list.append("doop")
        expect(list.head.data).to eq("doop")
        expect(list.head.next_node).to eq(nil)
    end

       # count - tells us how many nodes are in the list
#     it 'count method counts the nodes in the list' do 

    it 'count nodes'  do   
        list = LinkedList.new
        list.append("doop")
        expect(list.count).to eq(1)
      end

      it "create a string of data from each node" do
        list = LinkedList.new
        list.append("doop")
        list.append("deep")
        expect(list.to_string).to eq("doop deep")
        expect(list.count).to eq(2)
      end
      require 'pry'; binding.pry
end     
    


