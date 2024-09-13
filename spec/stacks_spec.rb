# frozen_string_literal: true

require_relative '../stack'

RSpec.describe Stack do
  let(:stack) { Stack.new }

  context 'push' do
    it 'pushes an item to the stack' do
      stack.push('test 1')
      expect(stack.items.length).to eq(1)
    end

    it 'pushes an item to the top of the stack' do
      stack.push('test 1')
      stack.push('test 2')
      expect(stack.items.last).to eq('test 2')
    end
  end

  context 'pop' do
    it 'pops an item from the top of the stack' do
      stack.push('test 1')
      stack.push('test 2')
      expect(stack.pop).to eq('test 2')
    end

    it 'returns nil if stack is empty' do
      expect(stack.pop).to be_nil
    end
  end

  context 'peek' do
    it 'peeks at the top item' do
      stack.push('test 1')
      stack.push('test 2')
      expect(stack.peek).to eq('test 2')
    end

    it 'returns nil if stack is empty' do
      expect(stack.peek).to be_nil
    end
  end

  context 'size' do
    it 'returns the size of the stack' do
      stack.push('test 1')
      stack.push('test 2')
      expect(stack.size).to eq(2)
    end

    it 'returns 0 if stack is empty' do
      expect(stack.size).to eq(0)
    end
  end
end
