//: Playground - noun: a place where people can play

import UIKit
/*
二叉树的中序遍历

func getNums(_ child: TreeNode?) -> [Int] {
    var nums = [Int]()
    
    guard child != nil else {
        return nums
    }
    
    var stock = [TreeNode]()
    stock.append(child!)
    
    while stock.isEmpty == false {
        var carry = stock.last!
        while carry.left != nil {
            stock.append(carry.left!)
            carry = carry.left!
        }
        
        nums.append(carry.val)
        stock.removeLast()
        
        if stock.isEmpty == false {
            carry = stock.last!
            nums.append(carry.val)
            stock.removeLast()
            
            if carry.right != nil {
                stock.append(carry.right!)
                carry = carry.right!
                while carry.left != nil {
                    stock.append(carry.left!)
                    carry = carry.left!
                }
            }
        }
    }
    return nums
}
*/

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
    func isSymmetric(_ root: TreeNode?) -> Bool {
        
        guard root != nil else {
            return true
        }
        
        let leftChild = root!.left
        let rightChile = root!.right
        
        if (leftChild == nil && rightChile != nil) || (leftChild != nil && rightChile == nil) {
            return false
        }
        
        let nums1 = getNums(leftChild, reversed: false)
        let nums2 = getNums(rightChile, reversed: true)
        print(nums1)
        print(nums2)
        return nums1 == nums2
    }
    
    func getNums(_ child: TreeNode?, reversed: Bool) -> [String] {
        var nums = [String]()
        
        guard child != nil else {
            return nums
        }
        
        var stock = [TreeNode?]()
        stock.append(child!)
        var index = 0
        while index < stock.count {
            let carry = stock[index]
            if carry != nil {
                nums.append(String(carry!.val))
                if reversed == false {
                    stock.append(carry?.left)
                    stock.append(carry?.right)
                } else {
                    stock.append(carry?.right)
                    stock.append(carry?.left)
                }
            } else {
                nums.append("")
            }
            index = index + 1
        }
        
        return nums
    }
}

let root = TreeNode(1)
root.left = TreeNode(2)
root.left?.left = TreeNode(3)
root.left?.right = TreeNode(4)
root.right = TreeNode(2)
root.right?.left = TreeNode(4)
root.right?.right = TreeNode(3)

print(Solution().isSymmetric(root))


let node1 = TreeNode(1)
let node2 = TreeNode(2)
let node3 = TreeNode(3)
let node4 = TreeNode(4)

let root1 = node1
root1.left = node2
root1.left?.left = node3
root1.left?.right = node4
root1.right = node2
root1.right?.left = node4
root1.right?.right = node3

print(Solution().isSymmetric(root1))

let root2 = node1
root2.left = node2
root2.left?.right = node4
root2.right = node2
root2.right?.right = node4

print(Solution().isSymmetric(root2))
