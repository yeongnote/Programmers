import UIKit
import Foundation

func solution(_ array: [Int]) -> Int {
    var dic = [Int: Int]()
    var num = 0
    var count = 0
    
    for i in array {
        if dic.contains {$0.key == 1} {
            dic[i]! += 1
        } else {
            dic[i] = 1
        }
    }
    
    for (key, value) in dic {
        if value == dic.values.max() {
            count += 1
            num = key
        }
    }
    
    return count == 1 ? num : -1
}

