import Foundation

func solution(_ my_string:String, _ index_list:[Int]) -> String {
    return String(index_list.map { Array(my_string)[$0]})
}