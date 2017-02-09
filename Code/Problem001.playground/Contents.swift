//: Playground - noun: a place where people can play

import UIKit

class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        for i in 0..<nums.count {
            for j in i + 1..<nums.count {
                if nums[i] + nums[j] == target {
                    return [i, j]
                }
            }
        }
        return []
    }
}

let nums = [2, 7, 11, 15]

let result = Solution().twoSum(nums, 9)
