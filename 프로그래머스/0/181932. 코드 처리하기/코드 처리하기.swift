import Foundation

func solution(_ code:String) -> String {
    var mode = 0
    var ret = ""
    
    if code.isEmpty {
        return "EMPTY"
    } else {
        for (idx, char) in code.enumerated() {
            if mode == 0 {
                if char == "1" {
                    mode = 1
                } else if idx % 2 == 0 {
                    ret.append(char)
                }
            } else if mode == 1 {
                if char == "1" {
                    mode = 0
                } else if idx % 2 != 0 {
                    ret.append(char)
                }
            }
        }
        
        return ret.isEmpty ? "EMPTY" : ret 
    }
}