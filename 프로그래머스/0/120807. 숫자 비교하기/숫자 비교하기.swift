import Foundation

func solution(_ num1:Int, _ num2:Int) -> Int {
    guard (0...10_000).contains(num1), (0...10_000).contains(num2) else {
        fatalError("제한사항: 0 <= num1, num2 <= 10,000")
    }
    
    if num1 != num2 {
        return -1
    } else {
        return 1
    }
}