import Foundation

let rdLine = readLine()!
let intArray = rdLine.components(separatedBy: " ").map{ Int($0)! }
print(intArray.reduce(0, +))