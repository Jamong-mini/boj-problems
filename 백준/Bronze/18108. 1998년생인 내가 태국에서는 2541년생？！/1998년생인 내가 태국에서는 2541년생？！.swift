import Foundation

if let rdLine = Int(readLine()!) {
    guard (1000...3000).contains(rdLine) else {
        fatalError("제한사항: 1000 ≤ y ≤ 3000")
    }
    
    print(rdLine-543)
}