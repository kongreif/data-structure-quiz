# frozen_string_literal: true

require 'debug'

# Queue data structure implementation
class LinkedListQueue
  attr_accessor :tail, :head

  def initialize
    @head = nil
    @tail = nil
  end

  def push(node)
    if @head.nil?
      @head = node
      @tail = node
      return
    end
    old_tail = @tail
    @tail = node
    old_tail.next = node
  end

  def pop
    return nil if @head.nil?

    old_head = @head
    @head = @head.next
    @tail = nil if @head.nil?
    old_head.value
  end

  def peek
    return nil if @tail.nil?

    @tail.value
  end

  def size
    return 0 if @head.nil?

    current_node = @head
    count = 1
    until current_node.next.nil?
      count += 1
      current_node = current_node.next
    end
    count
  end
end

# Node implementation
class Node
  attr_accessor :value, :next

  def initialize(value)
    @value = value
    @next = nil
  end
end
