import Foundation

func solution(_ a:Int, _ b:Int) -> Int {
    // max() 메서드와 보간을 활용
    return max(Int("\(a)\(b)")!, Int("\(b)\(a)")!)
}