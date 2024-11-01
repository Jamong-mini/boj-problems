import Foundation

func solution(_ num1:Int, _ num2:Int) -> Int {
    guard (-50_000...50_000).contains(num1), (-50_000...50_000).contains(num2) else {
        fatalError("제한사항: -50,000 <= num1, num2 <= 50_000")
    }
    
    return num1 + num2
}
