import Foundation

func solution(_ age:Int) -> Int {
    guard (1...120).contains(age) else {
        fatalError("제한사항: 0 < age <= 120")
    }
    
    return 2022 + 1 - age
}