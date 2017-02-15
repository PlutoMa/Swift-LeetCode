//: Playground - noun: a place where people can play

import UIKit

class Solution {
    //尽量不要用递归
    
    //f(x) = f(x - 2) + f(x - 1)  最后为两步 最后为一步
    //f(2) = 2 两次一步或者一次两步
    //f(1) = 1 一次一步
    
    func climbStairs(_ n: Int) -> Int {
        guard n > 2 else {
            return n
        }
        var step1 = 1
        var step2 = 2
        var result = 0
        for _ in 3...n {
            result = step1 + step2
            step1 = step2
            step2 = result
        }
        return result
    }
}

print(Solution().climbStairs(44))
