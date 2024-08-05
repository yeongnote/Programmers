import Foundation

func solution(_ l:Int, _ r:Int) -> [Int] {
    var result: [Int] = []
    
    for num in l...r {
        var str = String(num)
        if str.allSatisfy({ $0 == "0" || $0 == "5"}) {
            result.append(num)
        }
    }
    
    return result.isEmpty ? [-1] : result.sorted()
}