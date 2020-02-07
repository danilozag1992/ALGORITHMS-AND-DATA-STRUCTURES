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

  def unshifting(val)
    node_new = Node.new(val)
    if @head==nil
      @head = node_new
      @tail = @head
    else
      node_new.next_node = @head
      @head = node_new
    end
    @length +=1
    return self
  end

  def get(index)
    if index < 0 || index >= @length
      return nil
    end
    counter = 0
    current = @head
    while counter != index
      current = current.next_node
      counter +=1
    end
    return current
  end
end
ll = LinkedList.new
ll.unshifting(50)
ll.unshifting(60)
ll.unshifting(70)
ll.get(1)
