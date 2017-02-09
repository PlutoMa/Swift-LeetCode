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
    func mergeTwoLists(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        var cl1 = l1, cl2 = l2
        var result: ListNode?
        var current: ListNode?
        
        while cl1 != nil && cl2 != nil {
            let num: Int
            if cl1!.val > cl2!.val {
                num = cl2!.val
                cl2 = cl2!.next
            } else {
                num = cl1!.val
                cl1 = cl1!.next
            }
            if result == nil {
                result = ListNode(num)
                current = result
            } else {
                current?.next = ListNode(num)
                current = current?.next
            }
        }
        if cl1 != nil || cl2 != nil {
            var cl: ListNode?
            if cl1 != nil {
                cl = cl1
            } else {
                cl = cl2
            }
            while cl != nil {
                if result == nil {
                    result = ListNode(cl!.val)
                    current = result
                } else {
                    current?.next = ListNode(cl!.val)
                    current = current?.next
                }
                cl = cl?.next
            }
        }
        return result
    }
}

let l1 = ListNode(1)
l1.next = ListNode(3)
l1.next?.next = ListNode(4)

let l2 = ListNode(2)
l2.next = ListNode(5)
l2.next?.next = ListNode(6)

var result = Solution().mergeTwoLists(l1, l2)
while result != nil {
    print(result!.val)
    result = result!.next
}