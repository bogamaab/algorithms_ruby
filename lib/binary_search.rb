class BinarySearch
  attr_accessor :element_list
  def initialize(arr)
    @element_list = arr
  end

  def search(target_element)
    minor = 0
    major = @element_list.size - 1
    while minor <= major
      mid = (minor + major) / 2
      estimation = @element_list[mid]
      if estimation == target_element
        return mid
      elsif estimation > target_element
        major = mid - 1
      else
        minor = mid + 1
      end
    end
    nil
  end
end
