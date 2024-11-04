import Foundation

// n을 1부터 n까지 나머지를 구한다.
// 나머지가 0인 수를 모두 더한다.

func solution(_ n:Int) -> Int {
    guard (0...3000).contains(n) else {
        fatalError("제한사항: n은 0 이상 3000이하인 정수입니다.")
    }
    
    var result: Int = 0
    
    if n == 0 {
        return 0
    }
    
    for index in 1...n {
        if n % index == 0 {
            result += index
        }
    }
    return result
}