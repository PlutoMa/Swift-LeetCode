//: Playground - noun: a place where people can play

import UIKit

class Solution {
    func countAndSay(_ n: Int) -> String {
        var temp = [1]
        for _ in 1..<n {
            temp = count(temp)
        }
        var result = ""
        for i in 0..<temp.count {
            result.append(String(temp[i]))
        }
        return result
    }
    
    func count(_ s: [Int]) -> [Int] {
        var result = [Int]()
        var current = s[0]
        var count = 1
        for i in 1..<s.count {
            if s[i] == current {
                count = count + 1
            } else {
                result.append(count)
                result.append(current)
                current = s[i]
                count = 1
            }
        }
        result.append(count)
        result.append(current)
        return result
    }
}

//13112221
print(Solution().countAndSay(7))