import Foundation

func solution(_ genres:[String], _ plays:[Int]) -> [Int] {
    // 1. 장르별 총 재생 횟수와 노래 목록을 저장할 해시 테이블
    var genrePlayCount: [String: Int] = [:] //[장르: 총 재생 횟수]
    var genrePlays: [String: [(Int, Int)]] = [:] // [장르: [(재생횟수, 고유번호)]]
    
    // 2. 데이터 넣기
    for (index, genre) in genres.enumerated() {
        let play = plays[index]
        genrePlayCount[genre, default: 0] += play
        genrePlays[genre, default: []].append((play, index))
    }
    
    // 3.장르를 총 재생 횟수에 따라 정렬
    let sortedGenres = genrePlayCount.keys.sorted { genrePlayCount[$0]! > genrePlayCount[$1]! }
    
    // 4. 각 장르에서 노래를 정렬하고 최대 2곡 선택
    var result: [Int] = []
    for genre in sortedGenres {
        // 해당 장르의 노래를 재생 횟수 기준으로 정렬
        let plays = genrePlays[genre]!.sorted { $0.0 > $1.0 }
        // 상위 2곡 선택
        result.append(contentsOf: plays.prefix(2).map { $0.1 })
    }
    

    return result
}