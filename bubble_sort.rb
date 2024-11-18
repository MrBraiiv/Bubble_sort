require 'pry-byebug'
def bubble_sort(nums)
  sorted = false
  sorted_nums = nums

  i = 0
  j = 1

  until(sorted) do
    if sorted_nums[i] > sorted_nums[j]
      copy = nums[i]
      nums[i] = nums[j]
      nums[j] = copy
    else
      test =
        sorted_nums.each_cons(2).all? do |num, next_num|
            num <= next_num
        end
      sorted = true if test == true

    end
    
    i += 1
    j += 1

    if j == sorted_nums.length
      i = 0
      j = 1
    end

  end
  p sorted_nums
end

bubble_sort([4,3,78,2,0,2])