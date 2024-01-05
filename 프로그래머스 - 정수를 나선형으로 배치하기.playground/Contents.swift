import UIKit
import Foundation

func solution(_ n:Int) -> [[Int]] {
    // n * n 배열을 0으로 초기화
    var array = Array(repeating: Array(repeating: 0, count: n), count: n)
    
    // 현재 위치
    var (x, y) = (0, 0)
    //방향
    var direction = 0 //0, 1, 2, 3
    //배열을 채울 떄, 행과 열 이동 방향
    let dx = [0, 1, 0, -1]
    let dy = [1, 0 , -1, 0]
    
    for i in 1...n*n {
        array[x][y] = i
        
        // 다음 위치
        var nextX = x + dx[direction]
        var nextY = y + dy[direction]
        
        // n * n 배열 위치에 벗어나는가.
        if nextX < 0 || nextY < 0 || nextX >= n || nextY >= n || array[nextX][nextY] != 0 { // 0 ~ 4
            direction = (direction + 1) % 4 //방향전환
            nextX = x + dx[direction]
            nextY = y + dy[direction]
            
        }
        
        x = nextX
        y = nextY
    }
    
    
    return array
}

let a = solution(6)
print(a)

/*
 [1, 2, 3, 4, 5, 6]
 [20, 21, 22, 23, 24, 7]
 [19, 32, 33, 34, 25, 8]
 [18, 31, 36, 35, 26, 9]
 [17, 30, 29, 28, 27, 10]
 [16, 15, 14, 13, 12, 11]
 */
