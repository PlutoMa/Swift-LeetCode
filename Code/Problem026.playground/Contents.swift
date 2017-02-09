//: Playground - noun: a place where people can play

import UIKit

class Solution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        if nums.count < 2 {
            return nums.count
        }
        var index = 1, length = 1
        while index < nums.count {
            if nums[index] != nums[index - 1] {
                nums[length] = nums[index]
                length = length + 1
            }
            index = index + 1
        }
        return length
    }
}

var nums1 = [1, 1, 2]
print(Solution().removeDuplicates(&nums1))

var nums2 = [1, 2, 3]
print(Solution().removeDuplicates(&nums2))