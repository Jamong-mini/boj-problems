import Foundation

func solution(_ clothes:[[String]]) -> Int {
    
    var clothingTypes: [String] = []
    var clothingNames: [[String]] = []
    var combinations = 1
    
    // 1. 의상의 종류를 확인하고 저장
    for item in clothes {
        let type = item[1] // 의상의 종류
        if !clothingTypes.contains(type) {
            clothingTypes.append(type)
            clothingNames.append([]) // 새로운 종류에 대한 빈 배열 추가
        }
    }
    
    // 2. 의상의 같은 종류들끼리 저장
    for item in clothes {
        let name = item[0]
        let type = item[1]
        
        // type에 대한 인덱스 번호를 찾아 의상의 이름의 배열에 넣음
        if let index = clothingTypes.firstIndex(of: type) {
            clothingNames[index].append(name)
        }
    }
    
    // 조합의 수 공식
    for count in clothingNames {
        combinations *= (count.count + 1)
    }
    
    return combinations - 1
}