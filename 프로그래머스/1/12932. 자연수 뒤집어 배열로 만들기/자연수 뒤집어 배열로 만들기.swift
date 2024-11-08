func solution(_ n:Int64) -> [Int] {
    // 제한사항: 0 < x ≤ 10_000_000인 자연수
    guard (0...10_000_000_000).contains(n) else {
        print("제한사항: 0 < x ≤ 10_000_000인 자연수")
        return []
    }
    
    // return하는 배열을 만든다.
    var answerArray:[Int] = []
    
    // Int로 캐스팅하여 return 배열 앞에 넣는다.
    for chr in String(n) {
        let num = Int(String(chr)) ?? 0
        answerArray.insert(num, at: 0) 
    }
    
    
    return answerArray
}