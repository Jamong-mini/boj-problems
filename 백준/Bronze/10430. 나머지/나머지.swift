import Foundation

if let rdLine = readLine() {
    let inputArray = rdLine.components(separatedBy: " ")
    
    guard inputArray.count == 3,
        let A = Int(inputArray[0]), A >= 2, A <= 10_000,
        let B = Int(inputArray[1]), B >= 2, B <= 10_000,
        let C = Int(inputArray[2]), C >= 2, C <= 10_000
    else {
        fatalError("제한사항: 2 ≤ A, B, C ≤ 10000")
    }
    
    print((A+B)%C)
    print(((A%C)+(B%C))%C)
    print((A*B)%C)
    print(((A%C)*(B%C))%C)
} 