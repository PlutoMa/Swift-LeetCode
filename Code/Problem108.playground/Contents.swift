//: Playground - noun: a place where people can play

import UIKit

public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init(_ val: Int) {
        self.val = val
        self.left = nil
        self.right = nil
    }
}

class Solution {
    func sortedArrayToBST(_ nums: [Int]) -> TreeNode? {
        if nums.count == 0 {
            return nil
        }
        if nums.count == 1 {
            return TreeNode(nums[0])
        }
        let mid = nums.count / 2
        let root = TreeNode(nums[mid])
        var leftNums = [Int]()
        if mid > 0 {
            leftNums = Array(nums[0..<mid])
        }
        root.left = sortedArrayToBST(leftNums)
        var rightNums = [Int]()
        if mid < nums.count {
            rightNums = Array(nums[(mid + 1)..<nums.count])
        }
        root.right = sortedArrayToBST(rightNums)
        return root
    }
}
