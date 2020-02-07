class Node
  attr_accessor :data, :next_node
  def initialize(data, next_node = nil)
    @data = data
    @next_node = next_node
  end
end

class LinkedList
  def initialize
    @head = nil
    @tail = nil
    @length = 0
  end
  def pushing(val)
    node = Node.new(val)
    if !@head
      @head = node
      @tail = node
    else
      @tail.next_node = node
      @tail = node
    end
    @length+=1
    return self
  end
  def poping
    if !@head
      return "List is empty"
    end
    current = @head
    new_tail = current
    while current.next_node
      new_tail = current
      current = current.next_node
    end
    @tail = new_tail
    @tail.next_node = nil
    @length -= 1
    if @length == 0
      @head = nil
      @tail = nil
    end
    return current.data
  end

  def shifting
    if !@head
      return "List is empty!"
    end
    current_head = @head
    @head = current_head.next_node
    @length-=1
    if @length == 0
      @tail = nil
    end
    return current_head.data
  end
end
ll = LinkedList.new
ll.pushing(20)
ll.pushing(30)
ll.pushing(40)
ll.poping
b = ll.shifting
puts b