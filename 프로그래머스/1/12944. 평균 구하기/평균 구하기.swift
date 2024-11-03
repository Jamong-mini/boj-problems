import Foundation

func solution(_ arr:[Int]) -> Double {
    guard (1...100).contains(arr.count), arr.allSatisfy({ -10_000...10_000 ~= $0 }) else {
        fatalError("제한사항: -10,0000 ≤ arr의 원소 ≤ 10,000, 1 ≤ arr의 길이 ≤ 100")
    }
    
    var arrSum: Double = 0

    for num in arr {
        arrSum += Double(num)
    }

    return arrSum / Double(arr.count)
}