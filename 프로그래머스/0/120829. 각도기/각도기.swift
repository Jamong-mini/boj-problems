import Foundation

func solution(_ angle:Int) -> Int {
    guard (1...180).contains(angle) else {
        fatalError("제한사항: 0 < angle < 180")
    }
    
    switch angle {
    case 1...89: return 1
    case 90: return 2
    case 91...179: return 3
    default: return 4
    }
}