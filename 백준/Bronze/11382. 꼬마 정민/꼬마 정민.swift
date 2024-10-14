import Foundation

if let rdLine = readLine() {
    let inputArray = rdLine.components(separatedBy: " ")

    guard inputArray.count == 3,
          let firstNum = Int(inputArray[0]), (1...1_000_000_000_000).contains(firstNum),
          let secondNum = Int(inputArray[1]), (1...1_000_000_000_000).contains(secondNum),
          let thirdNum = Int(inputArray[2]), (1...1_000_000_000_000).contains(thirdNum)
    else {
        fatalError("제한사항: 1 ≤ A, B, C ≤ 10^12")
    }

    print(firstNum + secondNum + thirdNum)
}