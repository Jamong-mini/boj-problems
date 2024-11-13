import Foundation

func solution(_ n: Int64) -> Int64 {
    // 제한 사항 확인
    let limitRange: ClosedRange<Int64> = 1...50_000_000_000_000
    guard limitRange.contains(n) else {
        print("제한사항 : n은 1이상, 50000000000000 이하인 양의 정수입니다.")
        return -1
    }
    
    // 결과 초기값 설정
    var result: Int64 = -1
    
    // 1부터 순차적으로 제곱수를 검사
    var baseNum: Int64 = 1
    while baseNum * baseNum <= n {
        if baseNum * baseNum == n {
            result = (baseNum + 1) * (baseNum + 1)
            break
        }
        baseNum += 1
    }
    
    return result
}
