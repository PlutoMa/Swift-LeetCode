//: Playground - noun: a place where people can play

import UIKit

class Solution {
    func isValid(_ s: String) -> Bool {
        var array = [Character]()
        for theChar in s.characters {
            if theChar == "{" ||
                theChar == "(" ||
                theChar == "["{
                array.append(theChar)
            } else {
                if theChar == "}" {
                    if array.last == "{" {
                        array.removeLast()
                    } else {
                        return false
                    }
                } else if theChar == "]" {
                    if array.last == "[" {
                        array.removeLast()
                    } else {
                        return false
                    }
                } else if theChar == ")" {
                    if array.last == "(" {
                        array.removeLast()
                    } else {
                        return false
                    }
                } else {
                    return false
                }
            }
        }
        if array.isEmpty == false {
            return false
        }
        return true
    }
}

print(Solution().isValid("()"))
print(Solution().isValid("()[]{}"))
print(Solution().isValid("(]"))
print(Solution().isValid("([)]"))
