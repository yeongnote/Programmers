import UIKit
import Foundation

//공배수 number가 n,m의 공배수이면 1 아니면 0
func solution(_ number:Int, _ n:Int, _ m:Int) -> Int {
    
    return number % n == 0 && number % m == 0 ? 1 : 0
}
