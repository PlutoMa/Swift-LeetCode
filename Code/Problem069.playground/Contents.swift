//: Playground - noun: a place where people can play

import UIKit

class Solution {
    func mySqrt(_ x: Int) -> Int {
        guard x > 0 else {
            return 0
        }
        var min = 1
        var max = x
        var mid = 0
        while true {
            mid = getMidNum(min, max)
            if mid != 0 && mid != x {
                let mul = mid * mid
                if mul == x {
                    break
                } else if mul < x {
                    if ((mid + 1) * (mid + 1)) > x {
                        break
                    } else {
                        min = mid + 1
                    }
                } else if mul > x {
                    if ((mid - 1) * (mid - 1)) < x {
                        mid = mid - 1
                        break
                    } else {
                        max = mid - 1
                    }
                }
                    
                else if mul < x && ((mid + 1) * (mid + 1)) > x {
                    break
                } else if mul > x && ((mid - 1) * (mid - 1)) < x {
                    mid = mid - 1
                    break
                }
            } else {
                break
            }
        }
        return mid
    }
    
    func getMidNum(_ min: Int, _ max: Int) -> Int {
        return (min + max) / 2
    }
}

print(Solution().mySqrt(-1))
print(Solution().mySqrt(0))
print(Solution().mySqrt(1))
print(Solution().mySqrt(2))
print(Solution().mySqrt(3))
print(Solution().mySqrt(4))
print(Solution().mySqrt(5))
print(Solution().mySqrt(6))
print(Solution().mySqrt(7))
print(Solution().mySqrt(8))
print(Solution().mySqrt(9))
