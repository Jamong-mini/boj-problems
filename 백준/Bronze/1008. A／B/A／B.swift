import Foundation

let rdLine = readLine()!
let doubleArray = rdLine.components(separatedBy: " ").map{ Double($0)! }
print(doubleArray[0] / doubleArray[1])