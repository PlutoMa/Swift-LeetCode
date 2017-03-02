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
    func levelOrderBottom(_ root: TreeNode?) -> [[Int]] {
        var result = [[Int]]()
        guard root != nil else {
            return result
        }
        
        var stock = [TreeNode]()
        stock.append(root!)
        
        while stock.isEmpty == false {
            var subAry = [Int]()
            var tempStock = [TreeNode]()
            for carry in stock {
                subAry.append(carry.val)
                if carry.left != nil {
                    tempStock.append(carry.left!)
                }
                if carry.right != nil {
                    tempStock.append(carry.right!)
                }
            }
            result.insert(subAry, at: 0)
            stock.removeAll()
            stock.append(contentsOf: tempStock)
        }
        
        return result
    }
}

let root = TreeNode(3)
root.left = TreeNode(9)
root.right = TreeNode(20)
root.right?.left = TreeNode(15)
root.right?.right = TreeNode(7)

print(Solution().levelOrderBottom(root))
