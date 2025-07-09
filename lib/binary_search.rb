class BinarySearch
  attr_accessor :element_list
  def initialize(arr)
    @element_list = arr
  end

  def search(target_element)
    low = 0
    high = @element_list.size - 1
    while low <= high
      mid = (low + high) / 2
      guess = @element_list[mid]
      if guess == target_element
        return mid
      elsif guess > target_element
        high = mid - 1
      else
        low = mid + 1
      end
    end
    nil
  end
end
