import Foundation

let rdLine = readLine()!
let intArray = rdLine.components(separatedBy: " ").map{ Int($0)! }
print(intArray[0] - intArray[1])