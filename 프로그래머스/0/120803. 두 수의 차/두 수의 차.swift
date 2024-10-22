import Foundation

func solution(_ num1: Int, _ num2: Int) -> Int {
    // 제한 사항 확인
    guard (-50000...50000).contains(num1), (-50000...50000).contains(num2) else {
        fatalError("제한 사항: -50,000 <= num1, num2 <= 50,000")
    }
    
    return num1 - num2
}