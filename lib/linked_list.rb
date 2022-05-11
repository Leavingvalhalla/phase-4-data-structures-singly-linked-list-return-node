require_relative './node'

class LinkedList
  attr_accessor :head

  def initialize
    @head = nil
  end

  def size
    return 0 if @head == nil
    last = @head
    count = 1
    while last.next_node
      last = last.next_node
      count +=1
    end
    count
  end

  def nth_from_end(n)
    return nil if n > self.size || n < 1 
    target = @head
    (self.size - n).times do
    target = target.next_node
    end
  target.value
  end

end


