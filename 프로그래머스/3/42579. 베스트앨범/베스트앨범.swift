import Foundation

func solution(_ genres:[String], _ plays:[Int]) -> [Int] {
    /// 장르별 총 재생 횟수와 노래 목록을 저장할 해시 테이블 생성
    // [장르: 총 재생 횟수]
    var genrePlayCount: [String: Int] = [:]
    // [장르: [(재생횟수, 고유번호)]
    var genrePlays: [String: [(Int, Int)]] = [:]
    
    
    /// 데이터 넣어주기
    for (index, genre) in genres.enumerated() {
        let play: Int = plays[index]
        genrePlayCount[genre, default: 0] += play
        genrePlays[genre, default: []].append((play, index))
    }
    
    /// 장르를 총 재생 횟수에 따른 정렬
    let sortedGenre = genrePlayCount.keys.sorted {
        genrePlayCount[$0]! > genrePlayCount[$1]!
    }
    
    /// 각 장르에서 노래를 정렬하고 최대 2곡 선정
    var result: [Int] = []
    
    for genre in sortedGenre {
        let plays: [(Int, Int)] = genrePlays[genre]!.sorted {
            $0.0 > $1.0
        }
        result.append(contentsOf: plays.prefix(2).map {
            $0.1
        })
    }
    return result
}
