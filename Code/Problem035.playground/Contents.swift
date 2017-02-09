//: Playground - noun: a place where people can play

import UIKit

class Solution {
    func searchInsert(_ nums: [Int], _ target: Int) -> Int {
        guard nums.count > 0 else {
            return 0
        }
        
        for index in 0...nums.count {
            var min = Int.min
            var max = Int.max
            if index == 0 {
                max = nums[index]
            } else if index == nums.count {
                min = nums[index - 1]
            } else {
                min = nums[index - 1]
                max = nums[index]
            }
            
            if target > min && target <= max {
                return index
            }
        }
        return 0
    }
}

print(Solution().searchInsert([1, 3, 5, 6], 5))
print(Solution().searchInsert([1, 3, 5, 6], 2))
print(Solution().searchInsert([1, 3, 5, 6], 7))
print(Solution().searchInsert([1, 3, 5, 6], 0))
