import Foundation

func solution(_ num:Int) -> String {
    switch (num % 2) {
        case 0: 
            return "Even"
        default:
            return "Odd"
    }
}