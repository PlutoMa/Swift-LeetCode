//: Playground - noun: a place where people can play

import UIKit

class Solution {
    func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        guard n > 0 else {
            return
        }
        for i in 0..<nums2.count {
            if (m + i) < nums1.count {
                nums1[m + i] = nums2[i]
            } else {
                nums1.append(nums2[i])
            }
        }
        nums1.sort { $0 < $1 }
    }
}

var nums1 = [1, 2, 4, 5]
Solution().merge(&nums1, 4, [3, 6, 7], 3)
print(nums1)

var nums2 = [1]
Solution().merge(&nums2, 1, [], 0)
print(nums2)

var nums3 = [0]
Solution().merge(&nums3, 0, [1], 1)
print(nums3)
