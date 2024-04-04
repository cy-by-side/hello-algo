=begin
File: bubble_sort.rb
Created Time: 2024-04-02
Author: Cy (9738314@gmail.com)
=end

### 冒泡排序 ###
def bubble_sort(nums)
  n = nums.length()
  # 外循环：未排序区间为 [0, i]
  for i in (n - 1...0).step(-1)
    # 内循环：将未排序区间 [0, i] 中的最大元素交换至该区间的最右端
    for j in 0...i
      if nums[j] > nums[j + 1]
        # 交换 nums[j] 与 nums[j + 1]
        nums[j], nums[j + 1] = nums[j + 1], nums[j]
      end
    end
  end
end

### 冒泡排序（标志优化）###
def bubble_sort_with_flag(nums)
  n = nums.length()
  # 外循环：未排序区间为 [0, i]
  for i in (n - 1...0).step(-1)
    flag = false  # 初始化标志位
    # 内循环：将未排序区间 [0, i] 中的最大元素交换至该区间的最右端
    for j in 0...i
      if nums[j] > nums[j + 1]
        # 交换 nums[j] 与 nums[j + 1]
        nums[j], nums[j + 1] = nums[j + 1], nums[j]
        flag = true  # 记录交换元素
      end
    end
    if flag == false
      return
    end
  end
end

### Driver Code ###

nums = [8,5,6,4,3,7,10,2,9,4]
bubble_sort(nums)
puts "冒泡排序完成后 nums = #{nums}"

nums1 = [8,5,6,4,3,7,10,2,9,4]
bubble_sort_with_flag(nums1)
puts "冒泡排序完成后 nums1 = #{nums1}"
