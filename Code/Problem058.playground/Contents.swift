//: Playground - noun: a place where people can play

import UIKit

class Solution {
    func lengthOfLastWord(_ s: String) -> Int {
        var result = 0
        let charArray = [Character](s.characters)
        for i in 0..<charArray.count {
            if charArray[charArray.count - 1 - i] == " " {
                guard result == 0 else {
                    break
                }
            } else {
                result = result + 1
            }
        }
        return result
    }
}

let s = "   "
print(Solution().lengthOfLastWord(s))