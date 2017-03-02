//: Playground - noun: a place where people can play

import UIKit

class Solution {
    func generate(_ numRows: Int) -> [[Int]] {
        var result = [[Int]]()
        
        for row in 0..<numRows {
            var carry = [Int]()
            for column in 0...row {
                if column == 0 {
                    carry.append(1)
                    continue
                }
                if column == row {
                    carry.append(1)
                    continue
                }
                let leftNum = result[row - 1][column - 1]
                let rightNum = result[row - 1][column]
                carry.append(leftNum + rightNum)
            }
            result.append(carry)
        }
        
        return result
    }
}

print(Solution().generate(5))
