//: Playground - noun: a place where people can play

import UIKit

class Solution {
    func reverse(_ x: Int) -> Int {
        var tempX = x > 0 ? x : -x
        var sum = 0
        while tempX != 0 {
            sum = sum * 10 + tempX % 10
            tempX = tempX / 10
            
            if sum > Int(Int32.max) || sum < Int(Int32.min) {
                return 0
            }
        }
        sum = x > 0 ? sum : -sum
        return sum
    }
}

let result1 = Solution().reverse(123)
let result2 = Solution().reverse(-123)