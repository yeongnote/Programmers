import Foundation

func solution(_ n:Int) -> Int {
    // 단일 패스 접근방식
    if n % 2 == 0 {
        return (2...n).filter { $0 % 2 == 0 }.map { $0 * $0 }.reduce(0) { $0 + $1 }
    } else {
        return (1...n).filter { $0 % 2 != 0 }.reduce(0) { $0 + $1 }
    }
}
/*
 고차함수 filter, map, reduce와 삼항연산 활용하여 리턴값을 구해봤지만, 시간복잡도와 메모리 효율이 낮아져 접근방식을 다르게 함.
    return n % 2 == 0 ? Array(2...n).filter { $0 % 2 == 0 }.map { $0 * $0 }.reduce(0) { $0 + $1 } : Array(1...n).filter { $0 % 2 != 0 }.reduce(0) { $0 + $1 }
*/