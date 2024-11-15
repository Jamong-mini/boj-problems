import Foundation

func solution(_ x:Int) -> Bool {
    // 매직 넘버 관리
    let limitRange: ClosedRange<Int> = 1...10_000
    
    // 제한 조건
    guard limitRange.contains(x) else {
        print("제한 조건: x는 1 이상, 10000 이하인 정수입니다.")
        return false
    }
    
    // 1. 자릿수의 수들을 더할 변수를 만든다
    var sumValue: Int = 0
    
    // 2. Int로 받은 x를 Character로 캐스팅하여 뽑아내고 변수에 더한다.
    for str in String(x) {
        sumValue += Int(String(str)) ?? 0
    }
    // 3. 양의 정수 x에 변수를 나눈 값이 나머지가 0이면 True, 0이 아니면 False를 반환한다.
    return (x % sumValue == 0) ? true : false
}