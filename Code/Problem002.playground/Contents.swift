//: Playground - noun: a place where people can play

import UIKit


public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}

class Solution {
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        var cl1: ListNode? = l1
        var cl2: ListNode? = l2
        
        var temp = 0
        var result: ListNode?
        var currentNode: ListNode?
        while (cl1 != nil) && (cl2 != nil) {
            var num = cl1!.val + cl2!.val + temp
            if num >= 10 {
                temp = 1
                num = num - 10
            } else {
                temp = 0
            }
            if result == nil {
                result = ListNode(num)
                currentNode = result
            } else {
                currentNode?.next = ListNode(num)
                currentNode = currentNode?.next
            }
            
            cl1 = cl1?.next
            cl2 = cl2?.next
        }
        var tempNode: ListNode?
        if (cl1 != nil) || (cl2 != nil) {
            if cl1 != nil {
                tempNode = cl1
            } else {
                tempNode = cl2
            }
        }
        
        if tempNode != nil {
            while tempNode != nil {
                var num = tempNode!.val + temp
                if num >= 10 {
                    temp = 1
                    num = num - 10
                } else {
                    temp = 0
                }
                if result == nil {
                    result = ListNode(num)
                    currentNode = result
                } else {
                    currentNode?.next = ListNode(num)
                    currentNode = currentNode?.next
                }
                
                tempNode = tempNode?.next
            }
        }
        
        if temp != 0 {
            if result == nil {
                result = ListNode(temp)
            } else {
                currentNode?.next = ListNode(temp)
            }
        }
        return result
    }
}

let l1 = ListNode(2)
l1.next = ListNode(4)
l1.next?.next = ListNode(3)

let l2 = ListNode(5)
l2.next = ListNode(6)
l2.next?.next = ListNode(4)

var result = Solution().addTwoNumbers(l1, l2)
while result != nil {
    print(result!.val)
    result = result!.next
}