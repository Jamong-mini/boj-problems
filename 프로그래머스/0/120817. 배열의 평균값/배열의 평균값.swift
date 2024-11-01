import Foundation

func solution(_ numbers:[Int]) -> Double {
    guard (0...1_000).contains(numbers.count), numbers.allSatisfy({ 0...1_000 ~= $0 }) else {
        fatalError("제한사항: 0 ≤ numbers의 원소 ≤ 1,000, 1 ≤ numbers의 길이 ≤ 100")
    }
        /* allSatisfy 대신 
        for number in numbers {
            if !(0...1_000).contains(number)
        } 이렇게 구현 가능
        */
    
    var sum: Double = 0
    
    for number in numbers {
        sum += Double(number)
    }
    
    return sum / Double(numbers.count)
}
