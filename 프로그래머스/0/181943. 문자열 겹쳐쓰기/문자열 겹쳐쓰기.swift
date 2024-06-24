import Foundation

func solution(_ my_string:String, _ overwrite_string:String, _ s:Int) -> String {
    var a = my_string.prefix(s)
    var b = overwrite_string
    var c = my_string.suffix(my_string.count - (s + overwrite_string.count))
    
    
    return a + b + c
}