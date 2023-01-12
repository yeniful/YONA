//
//  Studio.swift
//  YONA
//
//  Created by Yeni Hwang on 2023/01/12.
//

import Foundation

struct Studio: Codable {
    let id: Int
    let name: String
    let isOnedayClass: Bool
    let description: String
    let coordinate: Coordinate
}

struct Coordinate: Codable {
    let latitude: Float
    let altitude: Float
}

let studioJson = """
[
    {
        "id": 1,
        "name": "소소한 요가 1",
        "isOnedayClass": true,
        "description": "친절한 선생님들과 성요셉성당과 이동공원이 보이는 아름다운 뷰",
        "coordinate": {
                        "latitude": 37.310206,
                        "altitude": 126.848056
                    }

    },

    {
        "id": 2,
        "name": "소소한 요가 2",
        "isOnedayClass": true,
        "description": "친절한 선생님들과 성요셉성당과 이동공원이 보이는 아름다운 뷰",
        "coordinate": {
                        "latitude": 37.310206,
                        "altitude": 126.848056
                    }
    },

    {
        "id": 3,
        "name": "소소한 요가 3",
        "isOnedayClass": true,
        "description": "친절한 선생님들과 성요셉성당과 이동공원이 보이는 아름다운 뷰",
        "coordinate": {
                        "latitude": 37.310206,
                        "altitude": 126.848056
                    }
    }

]
""".data(using: .utf8)!
