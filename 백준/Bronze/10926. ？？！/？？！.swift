import Foundation

if let pageId = readLine() {
    guard pageId.allSatisfy({ $0.isLowercase }) else {
        fatalError("제한사항: 소문자만 가능")
    }
    
    guard (1...50).contains(pageId.count) else { 
        fatalError("제한사항: 50자 이내")
    }
    
    print("\(pageId)??!")
}