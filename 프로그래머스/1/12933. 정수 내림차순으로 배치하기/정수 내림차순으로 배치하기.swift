import Foundation

func solution(_ n:Int64) -> Int64 {
    
    // 매직 넘버 관리
    let limitRange: ClosedRange<Int64> = 1...8_000_000_000
    
    // 제한 조건
    guard limitRange.contains(n) else {
        print("제한 조건: n은 1이상 8000000000 이하인 자연수입니다.")
        return -1
    }
    
    // 비교할 배열 생성
    var valueArray: [Character] = []
    var indexStack: Int = 0
    
    // 배열에 문자를 넣어준다.
    for numStr in String(n) {
        valueArray.append(numStr)
    }
    
    // 매직 넘버 관리
    var valueArrayRange: Range<Int> = 0..<valueArray.count
    
    // 인덱스를 이용하여 정렬 (버블 정렬을 이용)
    for count in valueArrayRange {
        var valueStackArrayRange: Range<Int> = 0..<(valueArray.count - indexStack - 1)
        for index in valueStackArrayRange {
            if valueArray[index] < valueArray[index + 1] {
                valueArray.swapAt(index, index + 1)
            } 
        }
        indexStack += 1
    }
    
    // 정렬된 문자열을 Int64로 변환하여 반환
    return Int64(String(valueArray)) ?? -1
}