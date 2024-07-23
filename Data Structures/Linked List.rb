class Node
  attr_accessor :data, :next

  def initialize(data, next_node = nil)
    @data = data
    @next = next_node
  end
end

class LinkedList
  attr_accessor :head

  def initialize
    @head = nil
  end

  def append(data)
    if @head.nil?
      @head = Node.new(data)
    else
      current = @head
      current = current.next while current.next
      current.next = Node.new(data)
    end
  end

  def prepend(data)
    @head = Node.new(data, @head)
  end

  def delete(data)
    return if @head.nil?

    if @head.data == data
      @head = @head.next
      return
    end

    current = @head
    while current.next && current.next.data != data
      current = current.next
    end

    return if current.next.nil?

    current.next = current.next.next
  end

  def find(data)
    current = @head
    while current && current.data != data
      current = current.next
    end
    current
  end

  def to_s
    result = []
    current = @head
    while current
      result << current.data
      current = current.next
    end
    result.join(" -> ")
  end
end

# Example usage:
list = LinkedList.new
list.append(1)
list.append(2)
list.append(3)
list.prepend(0)

puts "Linked List: #{list}"

list.delete(2)
puts "After deleting 2: #{list}"

node = list.find(3)
puts "Found node with data 3: #{node ? node.data : 'not found'}"

