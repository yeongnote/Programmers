import UIKit
import Foundation

func solution(_ num:Int, _ total:Int) -> [Int] {
    let m = total / num
    let start = m - (num - 1) / 2
    
    return Array(start...(start + num - 1))
}


var a = solution(5, 20)
print(a)
