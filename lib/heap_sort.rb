# require_relative "min_heap"

# This method uses a heap to sort an array.
# Time Complexity:  O(nlogn)
# Space Complexity: O(1)
def heapsort(list)

  return list if list.length - 1 <= 1

  heap = MinHeap.new

  list.each do |value|
    heap.add(value)
  end

  result = []
  
  list.length.times do
    result << heap.remove
  end

  return result
end