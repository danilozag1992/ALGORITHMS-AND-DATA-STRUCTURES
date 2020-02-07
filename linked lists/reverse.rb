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

  def insert(index,val)
    return false if index < 0 || index > @length
    if index == @length
      return pushing(val)
    end
    if index == 0
      return unshifting(val)

    end
    new_node = Node.new(val)
    prev = get(index-1)
    temp = prev.next_node
    prev.next_node = new_node
    new_node.next_node = temp
    @length+=1
    return self
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
    1 2 3 4 5
    prev = get(index-1)
    removed = prev.next_node
    prev.next_node = removed.next_node
    @length -=1
    return removed.data
  end

  def reverse
    node = @head
    @head = @tail
    @tail = node
    prev = nil
    i = 0
    node.next nil
    for i in i..@length-1 do
      current = node.next_node
      node.next_node = prev
      prev = node
      node = current
    end
    return self
  end

  def print
    arr = []
    current = @head
    while current
      arr.push(current.data)
      current=current.next_node
    end
    p arr
  end
end
ll = LinkedList.new
ll.pushing(50)
ll.pushing(60)
ll.pushing(70)
ll.shifting
p ll



