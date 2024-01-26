import Foundation

func solution(_ sizes:[[Int]]) -> Int {
    let maxNum = sizes.map { $0.max()!}.max()!
    let minNum = sizes.map { $0.min()!}.max()!
    return maxNum * minNum
}