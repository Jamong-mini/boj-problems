import Foundation

func solution(_ s:String) -> Int {
    // 제한 조건 생성
    // 1. s의 길이는 1이상 5이하 확인
    guard (1...6).contains(s.count) else { return -1 }
    
    // 3. s가 부호와 숫자로만 이루어져 있는지 검사
    let allowedCharacters = CharacterSet(charactersIn: "+-0123456789")
    guard s.rangeOfCharacter(from: allowedCharacters.inverted) == nil else { return -2 }
    
    // 4. s가 "0"으로 시작하지 않는지 확인
    // guard !s.hasPrefix("0"), !s.hasPrefix("+0"), !s.hasPrefix("-0") else { return -3 }
    
    
    // 타입캐스팅 
    return Int(s) ?? 0
}