import Foundation

func solution(_ n:Int) -> Int {
    guard (3...1_000_000).contains(n) else {
        print("제한사항: 3 ≤ n ≤ 1,000,000")
        return 0
    }
    
    for index in 2..<n {
        if n % index == 1 {
            return Int(index)
        }
    }
    
    return -1
}