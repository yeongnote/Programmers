import Foundation

func solution(_ str1:String, _ str2:String) -> String {
    var a = str1
    var b = str2
    return String(zip(a, b).flatMap { [$0, $1] })
}