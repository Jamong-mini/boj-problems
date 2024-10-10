import Foundation

if let rdLine = readLine() {
    let inputArray = rdLine.components(separatedBy: " ")
    
    guard inputArray.count == 2, 
        let A = Int(inputArray[0]), A >= 1, A <= 10_000,
        let B = Int(inputArray[1]), B >= 1, B <= 10_000
    else {
        fatalError("제한사항: 1 ≤ A, B ≤ 10,000")
    }
    print(A + B)
    print(A - B)
    print(A * B)
    print(A / B)
    print(A % B)
}