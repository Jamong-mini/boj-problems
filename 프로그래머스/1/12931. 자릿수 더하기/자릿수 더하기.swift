import Foundation

// number % 10을 통해 현재 number의 가장 오른쪽 자릿수를 구하고, 이를 answer에 더한다.
// number /= 10을 통해 가장 오른쪽 자릿수를 없애면서 자릿수를 한 단계씩 줄인다.
// number가 0이 될 때까지 이 과정을 반복하면 모든 자릿수의 합이 answer에 누적된다.


func solution(_ n:Int) -> Int
{
    guard (...100_000_000).contains(n) else {
        fatalError("제한사항: N의 범위 : 100,000,000 이하의 자연수")
    }
    
    var answer:Int = 0
    var num: Int = n
    
    while num > 0 {
        answer += (num % 10)
        num /= 10
    }
    
    return answer
}

// String으로 타입캐스팅 후 잘라서 더하는 함수도 있다.

/*
    let strNumber = String(n)
    var sum = 0
    
    for char in strNumber {
        if let digit = Int(String(char)) {
            sum += digit
        }
    }
    
    return sum
*/

