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
    func maxDepth(_ root: TreeNode?) -> Int {
        guard root != nil else {
            return 0
        }
        var stock = [TreeNode]()
        stock.append(root!)
        
        var maxDepth = 0
        
        while stock.isEmpty == false {
            maxDepth = maxDepth + 1
            var tempStock = [TreeNode]()
            for carry in stock {
                if carry.left != nil {
                    tempStock.append(carry.left!)
                }
                if carry.right != nil {
                    tempStock.append(carry.right!)
                }
            }
            stock.removeAll()
            stock.append(contentsOf: tempStock)
        }
        
        return maxDepth
    }
}


let root = TreeNode(1)
root.left = TreeNode(2)
root.left?.right = TreeNode(3)
root.right = TreeNode(4)
root.right?.right = TreeNode(5)
root.right?.right?.right = TreeNode(6)
print(Solution().maxDepth(root))

