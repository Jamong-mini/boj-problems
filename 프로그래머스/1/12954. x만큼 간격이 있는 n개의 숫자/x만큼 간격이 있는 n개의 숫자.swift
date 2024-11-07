func solution(_ x:Int, _ n:Int) -> [Int64] {
    
    // 제한조건: -10_000_000 ≤ x ≤ 10_000_000
    guard (-10_000_000...10_000_000).contains(x) else {
        print("제한조건: -10_000_000 ≤ x ≤ 10_000_000")
        return []
    }
    
    // 제한조건: 1 ≤ x ≤ 1_000
    guard (1...1_000).contains(n) else {
        print("제한조건: 1 ≤ x ≤ 1_000")
        return []
    }
    
    // 정답을 담을 리스트를 만든다.
    var answer: [Int64] = []
    
    // x에 1부터 n번까지 곱하고 배열에 담는다.
    for index in 1...n {
        answer.append(Int64(x * index))
    }
    
    return answer
}