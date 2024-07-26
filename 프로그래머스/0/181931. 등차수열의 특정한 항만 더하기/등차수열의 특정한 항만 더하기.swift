import Foundation

func solution(_ a:Int, _ d:Int, _ included:[Bool]) -> Int {
    
    return included.enumerated().filter { $0.element }.map { a + $0.offset * d  }.reduce(0, +)
}