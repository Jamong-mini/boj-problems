import Foundation

struct MinHeap {
    private var minHeap: [Int] = []
    private var maxHeapValue: Int? = nil // 최대값 추적
    
    var size: Int {
        return minHeap.count
    }
    
    var heapIsEmpty: Bool {
        return minHeap.isEmpty
    }
    
    mutating func insert(_ value: Int) {
        minHeap.append(value)
        heapifyUp(from: size - 1)
        
        // 최대값 업데이트
        if let currentMax = maxHeapValue {
            maxHeapValue = max(currentMax, value)
        } else {
            maxHeapValue = value
        }
    }
    
    mutating func removeMin() {
        guard !heapIsEmpty else { return }
        
        if size == 1 {
            minHeap.removeFirst()
            maxHeapValue = nil // 힙이 비었으므로 최대값 초기화
            return
        }
        
        let removedValue = minHeap[0]
        minHeap[0] = minHeap.removeLast()
        heapifyDown(from: 0)
        
        // 최대값 재계산 필요 시 처리
        if removedValue == maxHeapValue {
            maxHeapValue = minHeap.max()
        }
    }
    
    mutating func removeMax() {
        guard let maxValue = maxHeapValue else { return }
        if let index = minHeap.firstIndex(of: maxValue) {
            minHeap.remove(at: index)
            maxHeapValue = minHeap.max()
        }
    }
    
    private mutating func heapifyUp(from index: Int) {
        var currentIndex = index
        
        while currentIndex > 0 {
            let parentIndex = (currentIndex - 1) / 2
            
            if minHeap[currentIndex] >= minHeap[parentIndex] { break }
            minHeap.swapAt(currentIndex, parentIndex)
            currentIndex = parentIndex
        }
    }
    
    private mutating func heapifyDown(from index: Int) {
        var currentIndex = index
        
        while true {
            let leftChildIndex = 2 * currentIndex + 1
            let rightChildIndex = 2 * currentIndex + 2
            
            var smallestIndex = currentIndex
            
            if leftChildIndex < size && minHeap[leftChildIndex] < minHeap[smallestIndex] {
                smallestIndex = leftChildIndex
            }
            
            if rightChildIndex < size && minHeap[rightChildIndex] < minHeap[smallestIndex] {
                smallestIndex = rightChildIndex
            }
            
            if smallestIndex == currentIndex { break }
            minHeap.swapAt(currentIndex, smallestIndex)
            currentIndex = smallestIndex
        }
    }
    
        func result() -> [Int] {
        guard !heapIsEmpty else {
            return [0, 0]
        }
        
        return [maxHeapValue ?? 0, minHeap.first ?? 0]
    }
}

func solution(_ operations: [String]) -> [Int] {
    var queue = MinHeap()
    
    for operation in operations {
        let components = operation.split(separator: " ")
        let command = components[0]
        
        if command == "I", let value = Int(components[1]) {
            queue.insert(value)
        } else if command == "D", let value = Int(components[1]) {
            if value == 1 {
                queue.removeMax()
            } else if value == -1 {
                queue.removeMin()
            }
        }
    }
    
    return queue.result()
}