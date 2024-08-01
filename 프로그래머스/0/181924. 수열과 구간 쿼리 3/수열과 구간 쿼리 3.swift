import Foundation

func solution(_ arr:[Int], _ queries:[[Int]]) -> [Int] {
    var arr = arr
    
    for query in queries {
        let first = query[0]
        let second = query[1]
        
        arr.swapAt(first, second)
    }
    
    return arr
}