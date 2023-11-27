import UIKit

func solution(_ s:String, _ n:Int) -> String {
    //소문자 알파벳 저장
    let lower = Array("abcdefghijklmnopqrstuvwxyz")
    //대문자 알파벳 저장
    let upper = Array("ABCDEFGHIJKLMNOPQRSTUVWXYZ")
    var arr = Array(s)
    
    for i in 0..<arr.count {
        //contains를 통해 소문자 배열 안에 arr의 원소 있는지 체크
        if lower.contains(arr[i]) {
            let index = (lower.firstIndex(of: arr[i])! + n) % 26 //만약 원소 값이 z일 경우을 대비.
            arr[i] = lower[index]
        //contains를 통해 대문자 배열 안에 arr의 원소 있는지 체크
        } else if upper.contains(arr[i]) {
            let index = (upper.firstIndex(of: arr[i])! + n) % 26
            arr[i] = upper[index]
        }
    }
    return String(arr)
}
