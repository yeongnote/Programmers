import Foundation

func solution(_ my_string:String, _ queries:[[Int]]) -> String {
    var myStr = Array(my_string)
    
    for query in queries {
        let s = query[0]
        let e = query[1]
        
        let reverse = myStr[s...e].reversed()
        myStr.replaceSubrange(s...e, with: reverse)
    }
    
    return String(myStr)
}