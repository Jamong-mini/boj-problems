import Foundation

func readLineTreeNumber() -> Int {
    if let input = readLine(), let number = Int(input), 
        number >= 100 && number <= 999 {
            return number
        } else {
            fatalError("제한사항: 세 자리 자연수")
        }
}

func multiplyAndPrintSteps(first: Int, second: Int) {
    let secondDigits = [second % 10, (second / 10) % 10, second / 100]
    
    print(first * secondDigits[0])
    print(first * secondDigits[1])
    print(first * secondDigits[2])
    print(first * second)
}

let firstNumber = readLineTreeNumber()
let secondNumber = readLineTreeNumber()

multiplyAndPrintSteps(first: firstNumber, second: secondNumber)