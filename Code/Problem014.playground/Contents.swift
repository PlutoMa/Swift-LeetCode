//: Playground - noun: a place where people can play

import UIKit

class Solution {
    func longestCommonPrefix(_ strs: [String]) -> String {
        if strs.count > 0 {
            var charArray = [[Character]]()
            for str in strs {
                let charAry = [Character](str.characters)
                charArray.append(charAry)
            }
            
            var index = 1
            while index <= charArray[0].count {
                let tempChar = charArray[0][index - 1]
                for charAry in charArray {
                    if index > charAry.count || charAry[index - 1] != tempChar {
                        return String(charArray[0][0..<index - 1])
                    }
                }
                index = index + 1
            }
            
            return String(charArray[0][0..<index - 1])
        }
        return ""
    }
}

let strs1 = ["a", "b"]
print("--->" + Solution().longestCommonPrefix(strs1))

let strs2 = ["abab", "aba", ""]
print("--->" + Solution().longestCommonPrefix(strs2))

let strs3 = ["a"]
print("--->" + Solution().longestCommonPrefix(strs3))

let strs4 = [""]
print("--->" + Solution().longestCommonPrefix(strs4))