# frozen_string_literal: true

require 'debug'

# Queue data structure implementation
class LinkedListQueue
  def initialize
    @head = nil
    @tail = nil
  end

  # ------------------------------------
  # DON'T EDIT ABOVE THIS LINE
  def push(node)
    # Add push method here
  end

  def pop
    # Add pop method here
  end

  def peek
    # Add peek method here
  end

  def size
    # Add size method here
  end
end

# DON'T EDIT BELOW THIS LINE
# ------------------------------------

# Node implementation
class Node
  attr_accessor :value, :next

  def initialize(value)
    @value = value
    @next = nil
  end
end
