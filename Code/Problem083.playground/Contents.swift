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
    func deleteDuplicates(_ head: ListNode?) -> ListNode? {
        guard head != nil else {
            return nil
        }
        var start = head
        var end = head!.next
        let result = start
        while end != nil {
            if end!.val > start!.val {
                start!.next = end
                start = end
            }
            end = end!.next
        }
        start!.next = end
        return result
    }
}

let head = ListNode(1)
head.next = ListNode(1)
head.next?.next = ListNode(2)
head.next?.next?.next = ListNode(3)
head.next?.next?.next?.next = ListNode(3)

let result = Solution().deleteDuplicates(head)
var output = result
while output != nil {
    print(output!.val)
    output = output!.next
}
