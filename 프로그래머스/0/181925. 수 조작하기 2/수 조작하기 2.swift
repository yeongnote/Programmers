import Foundation

func solution(_ numLog:[Int]) -> String {
    var log = [1: "w", -1: "s", 10: "d", -10: "a"]
    return (1..<numLog.count).map { log[numLog[$0] - numLog[$0 - 1]]! }.joined()
}