import Foundation

func solution(_ num_list:[Int]) -> Int {
    var odd = Int(num_list.filter { $0 % 2 != 0 }.map { String($0) }.joined())!
    var even = Int(num_list.filter { $0 % 2 == 0 }.map { String($0) }.joined())!
    return odd + even
}