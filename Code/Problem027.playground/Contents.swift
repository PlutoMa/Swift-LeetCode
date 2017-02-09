//: Playground - noun: a place where people can play

import UIKit

class Solution {
    func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
        if nums.count == 0 {
            return 0
        }
        var index = 0, length = -1
        while index < nums.count {
            if nums[index] != val {
                length = length + 1
                nums[length] = nums[index]
            }
            index = index + 1
        }
        return length + 1
    }
}

var nums = [3, 2, 2, 3]
print(Solution().removeElement(&nums, 3))