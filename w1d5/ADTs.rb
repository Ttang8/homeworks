
class Stack
  def initialize
    @arr = []
  end

  def add(el)
    @arr << el
  end

  def remove
    @arr.pop
  end

  def show
    p @arr
  end
end

# if __FILE__ == $PROGRAM_NAME
#   puts "hi"
#   new_stack = Stack.new
#   new_stack.add(3)
#   new_stack.show
# end

# Now let's write a Queue class. We will need the following instance methods: enqueue(el), dequeue, and show.
# Test your code to ensure it follows the principle of FIFO.
class Queue

  def initialize
    @arr = []
  end

  def enqueue(el)
    @arr.unshift(el)
  end

  def dequeue
    @arr.pop
  end

  def show
    p @arr
  end
end

# new_queue = Queue.new
# new_queue.enqueue(3)
# new_queue.enqueue(5)
# new_queue.enqueue(6)
# new_queue.enqueue(7)
# new_queue.enqueue(8)
# new_queue.dequeue
# new_queue.show


class Map

  def initialize
    @arr = []
  end

  def assign(key, value)
    if @arr.empty?
      @arr << [key,value]
    else
      @arr.each_with_index do |pair, idx|
        if pair[0] == key
          @arr[idx] = [key, value]
          return
        end
      end
      @arr << [key, value]
    end
  end

  def lookup(key)
    @arr.each do |pair|
      if pair[0] == key
        p pair
      end
    end
    "No such key"
  end

  def remove(key)
    @arr.each_with_index do |pair, idx|
      if pair[0] == key
        @arr.delete_at(idx)
        return
      end
    end
    "No such key"
  end

  def show
    p @arr
  end
end

new_map = Map.new
new_map.assign(:apple, "red fruit")
# new_map.show
new_map.assign(:banana, "yellow fruit")
new_map.assign(:orange, "orange fruit")
# new_map.show

# new_map.lookup(:apple)
new_map.assign(:apple, "different red fruit")
# new_map.show
# new_map.lookup(:apple)
new_map.remove(:banana)
new_map.show
