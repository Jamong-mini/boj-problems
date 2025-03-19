import Foundation

func solution(_ s:String) -> Bool
{
    // False 조건: 문자열이 홀수일 경우
    if s.count % 2 != 0 {
        return false
    }
    
    // False 조건: 문자열이 ")"로 시작할 경우
    if s.first == ")" {
        return false
    }
    
    var stack: [Character] = []
    
    // False 조건: 괄호의 짝이 맞지 않을 경우
    for char in s {
        if char == "(" {
            // 여는 괄호는 스택에 추가
            stack.append(char)
        } else {
            // 닫는 괄호를 만났을 때 스택이 비어있으면 False
            if stack.isEmpty {
                return false
            }
            // 짝이 맞는 여는 괄호 제거
            _ = stack.removeLast()
        }
    }
    
    // 모든 문자 처리 후 스택이 비어있을 경우 True
    return stack.isEmpty
}