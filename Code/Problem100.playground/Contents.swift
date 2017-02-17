//: Playground - noun: a place where people can play

import UIKit

//二叉树深度优先遍历
/*
 (1) 树的根结点入栈
 (2)判断栈是否为空，不为空，则出栈，并输出出栈树结点的值
 (3)出栈树结点的右子树入栈
 (4)出栈树结点的左子树入栈
 (5)循环回到(2)
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
    func isSameTree(_ p: TreeNode?, _ q: TreeNode?) -> Bool {
        guard (p != nil && q != nil) || (p == nil && q == nil) else {
            return false
        }
        
        if p == nil && q == nil {
            return true
        }
        
        var pArr = [TreeNode]()
        var qArr = [TreeNode]()
        
        pArr.append(p!)
        qArr.append(q!)
        
        while pArr.isEmpty == false && qArr.isEmpty == false {
            let carryP = pArr.first!
            let carryQ = qArr.first!
            pArr.removeFirst()
            qArr.removeFirst()
            
            if carryP.val != carryQ.val {
                return false
            }
            
            if carryP.right == nil && carryQ.right != nil {
                return false
            }
            if carryP.right != nil && carryQ.right == nil {
                return false
            }
            if carryP.right != nil && carryQ.right != nil {
                pArr.append(carryP.right!)
                qArr.append(carryQ.right!)
            }
            
            if carryP.left == nil && carryQ.left != nil {
                return false
            }
            if carryP.left != nil && carryQ.left == nil {
                return false
            }
            if carryP.left != nil && carryQ.left != nil {
                pArr.append(carryP.left!)
                qArr.append(carryQ.left!)
            }
        }
        return true
    }
}

let p = TreeNode(1)
let q = TreeNode(0)

print(Solution().isSameTree(p, q))

let p1 = TreeNode(0)
let q1 = TreeNode(0)

print(Solution().isSameTree(p1, q1))