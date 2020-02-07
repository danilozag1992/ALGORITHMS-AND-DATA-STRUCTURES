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
    return current
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
    return current_head
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

  def  insert(index,val)
    return false if index < 0 || index > @length
    if index == @length
      pushing(val)
      return true
    end
    if index == 0
      unshifting(val)
      return true
    end
    new_node = Node.new(val)
    prev = get(index-1)
    temp = prev.next_node
    prev.next_node = new_node
    new_node.next_node = temp
    @length+=1
    return true
  end

  def remove(index)
    if index < 0 || index > @length
      return 'undefined'
    end
    if index == 0
      return shifting
    end
    if index == @length-1
      return poping
    end
    prev = get(index-1)
    removed = prev.next_node
    prev.next_node = removed.next_node
    @length -=1
    return removed.data
  end
end
ll = LinkedList.new
ll.unshifting(50)
ll.unshifting(60)
ll.unshifting(70)
ll.get(1)
ll.insert(2, 72)
p ll.remove(2)
p ll

