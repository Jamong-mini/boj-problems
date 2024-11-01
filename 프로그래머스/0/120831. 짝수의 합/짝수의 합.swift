import Foundation

func solution(_ n:Int) -> Int {
    guard (1...1000).contains(n) else {
        fatalError("제한사항: 0 < n <= 1000")
    }
    
    let divide = n / 2
    var result = 0
    
    for index in 0...divide {
        result += 2 * index
    }
    
    return result
}