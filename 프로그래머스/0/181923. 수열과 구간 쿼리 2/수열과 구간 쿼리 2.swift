import Foundation

func solution(_ arr:[Int], _ queries:[[Int]]) -> [Int] {
    var arr = arr
    var result: [Int] = []
    
    for query in queries {
        var s = query[0]
        var e = query[1]
        var k = query[2]
        
        let filtered = arr[s...e].filter { k < $0 }
        if let minValue = filtered.min() {
            result.append(minValue)
        } else {
            result.append(-1)
        }
        
    }
    
    return result
}