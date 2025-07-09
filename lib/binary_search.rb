# frozen_string_literal: true

class BinarySearch
  attr_accessor :steps

  def initialize
    @steps = 0
  end

  def search(arr = [], target_element = 0)
    low = 0
    high = arr.size - 1
    while low <= high
      @steps += 1
      mid = (low + high) / 2
      guess = arr[mid]
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

  def self.calculate_steps(num = 0)
    Math.log2(num)
  end
end
