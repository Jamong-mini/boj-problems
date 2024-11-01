import Foundation

func solution(_ num1:Int, _ num2:Int) -> Int {
    guard (1...100).contains(num1), (1...100).contains(num2) else {
        fatalError("제한사항: 0 < num1, num2 <= 100")
    }
    
    return (num1 * 1000 / num2)
}