import Foundation

func solution(_ num1:Int, _ num2:Int) -> Int {
    // 제한 사항 확인
    guard (0...100).contains(num1), (0...100).contains(num2) else {
        fatalError("제한사항 : 0 <= num1, num2 <= 100")
    }
    
    return (num1 * num2)
}