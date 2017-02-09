//: Playground - noun: a place where people can play

import UIKit

class Solution {
    func isPalindrome(_ x: Int) -> Bool {
        if x < 0 {
            return false
        }
        let xString = String(x)
        if xString.characters.count == 1 {
            return true
        }
        let count = xString.characters.count / 2
        for i in 1...count {
            let startString = xString.substring(to: xString.index(xString.startIndex, offsetBy: i))
            let startChar = startString.substring(from: startString.index(before: startString.endIndex))
            
            let endString = xString.substring(from: xString.index(xString.endIndex, offsetBy: -i))
            let endChar = endString.substring(to: endString.index(after: endString.startIndex))
            
            if startChar != endChar {
                return false
            }
        }
        return true
    }
}

print(Solution().isPalindrome(123))
print(Solution().isPalindrome(1221))
print(Solution().isPalindrome(-123))