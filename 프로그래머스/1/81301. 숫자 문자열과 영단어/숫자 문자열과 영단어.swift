import Foundation

func solution(_ s:String) -> Int {
    let arrNum = ["zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]
    var str = s
    for i in 0..<arrNum.count {
        str = str.replacingOccurrences(of: arrNum[i], with: String(i))
    }
    return Int(str)!
}