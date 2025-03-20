import Foundation

func solution(_ priorities:[Int], _ location:Int) -> Int {
    // 인덱스와 우선순위를 저장할 큐 생성
    var queue: [(index: Int, priority: Int)] = []
    
    // 인덱스와 우선순위 저장
    for (index, priority) in priorities.enumerated() {
        queue.append((index, priority))
    }
    
    // 실행 순서를 카운트할 변수
    var count = 0
    
    while !queue.isEmpty {
        // 1. 큐에서 첫 번째 프로세스를 꺼냄
        let currentProcess = queue.removeFirst()
        
        // 2. 대기 중인 프로세스 중 우선순위가 더 높은 프로세스가 있는지 확인
        let hasHigherPriority = queue.contains { $0.priority > currentProcess.priority }
        
        if hasHigherPriority {
            // 우선순위가 더 높은 프로세스가 있으면 현재 프로세스를 큐의 맨 뒤에 다시 추가
            queue.append(currentProcess)
        } else {
            // 우선순위가 더 높은 프로세스가 없으면 현재 프로세스 실행 (카운트 증가)
            count += 1
            
            // 찾고 있는 프로세스라면 실행 순서 반환
            if currentProcess.index == location {
                return count
            }
        }
    }
    
    return -1
}