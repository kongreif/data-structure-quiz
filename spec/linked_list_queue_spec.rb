# frozen_string_literal: true

require_relative '../linked_list_queue'

RSpec.describe LinkedListQueue do
  let(:queue) { LinkedListQueue.new }
  let(:node1) { Node.new('test1') }
  let(:node2) { Node.new('test2') }

  context 'push' do
    it 'pushes an item to the tail of the queue' do
      queue.push(node1)
      expect(queue.tail).to eq(node1)
    end

    it 'sets the head to the pushed item, if the queue was empty before' do
      queue.push(node1)
      expect(queue.head).to eq(node1)
    end
  end

  context 'pop' do
    it 'pops an item from the head of the queue' do
      queue.push(node1)
      queue.push(node2)
      expect(queue.pop).to eq('test1')
    end

    it 'sets head to previous second item' do
      queue.push(node1)
      queue.push(node2)
      queue.pop
      expect(queue.head).to eq(node2)
    end

    context 'when queue has 1 item' do
      it 'sets head to nil if the queue had 1 item' do
        queue.push(node1)
        queue.pop
        expect(queue.head).to eq(nil)
      end

      it 'sets tail to nil if the queue had 1 item' do
        queue.push(node1)
        queue.pop
        expect(queue.tail).to eq(nil)
      end
    end

    context 'when the queue is empty' do
      it 'returns nil if queue is empty' do
        expect(queue.pop).to eq(nil)
      end
    end
  end

  context 'peek' do
    it 'peeks at the tail of the queue' do
      queue.push(node1)
      queue.push(node2)
      expect(queue.peek).to eq('test2')
    end

    it 'returns nil if queue is empty' do
      expect(queue.peek).to eq(nil)
    end
  end

  context 'size' do
    it 'returns the size of the queue' do
      queue.push(node1)
      queue.push(node2)
      expect(queue.size).to eq(2)
    end

    it 'returns 0 if queue is empty' do
      expect(queue.size).to eq(0)
    end
  end
end
