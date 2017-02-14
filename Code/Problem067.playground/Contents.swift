//: Playground - noun: a place where people can play

import UIKit

class Solution {
    func addBinary(_ a: String, _ b: String) -> String {
        let longChars: [Character]
        let shortChars: [Character]
        
        if a.characters.count >= b.characters.count {
            longChars = [Character](a.characters)
            shortChars = [Character](b.characters)
        } else {
            longChars = [Character](b.characters)
            shortChars = [Character](a.characters)
        }
        
        var result = Array<Character>(repeating: "0", count: longChars.count)
        var carry = "0"
        for i in 0..<shortChars.count {
            let shortIndex = shortChars.count - 1 - i
            let longIndex = longChars.count - 1 - i
            var count = 0
            if shortChars[shortIndex] == "1" {
                count = count + 1
            }
            if longChars[longIndex] == "1" {
                count = count + 1
            }
            if carry == "1" {
                count = count + 1
            }
            if count == 0 {
                carry = "0"
            } else if count == 1 {
                carry = "0"
                result[longIndex] = "1"
            } else if count == 2 {
                carry = "1"
            } else if count == 3 {
                carry = "1"
                result[longIndex] = "1"
            }
        }
        for i in shortChars.count..<longChars.count {
            let index = longChars.count - 1 - i
            var count = 0
            if longChars[index] == "1" {
                count = count + 1
            }
            if carry == "1" {
                count = count + 1
            }
            if count == 0 {
                carry = "0"
            } else if count == 1 {
                carry = "0"
                result[index] = "1"
            } else if count == 2 {
                carry = "1"
            }
        }
        if carry == "1" {
            result.insert("1", at: 0)
        }
        return String(result)
    }
}
//110110
print(Solution().addBinary("100", "110010"))
