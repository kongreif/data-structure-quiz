# frozen_string_literal: true

# Stack
class Stack
  attr_reader :items

  def initialize
    @items = []
  end

  def push(item)
    @items.append(item)
  end

  def pop
    return nil if @items.empty?

    @items.delete_at(-1)
  end

  def peek
    return nil if @items.empty?

    @items[-1]
  end

  def size
    @items.length
  end
end
