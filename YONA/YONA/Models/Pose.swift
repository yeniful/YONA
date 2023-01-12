//
//  PoseModel.swift
//  YONA
//
//  Created by Yeni Hwang on 2023/01/12.
//

import Foundation


struct Pose: Codable {
    var id: Int
    var title: String
//    var imageString: String
    var description: String
}

let poseJson = """
[
    {
        "id": 1,
        "title": "다운독",

        "description": "손과 발을 바닥에 두고 몸을 산으로 만듭니다. 등은 내리고, 엉덩이는 들어올려 햄스트링을 길게 늘려줍니다."

    },

    {
        "id": 2,
        "title": "차투랑가",

        "description": "손바닥을 바닥에 힘있게 대고 발끝을 세워서 몸을 일자로 만듭니다. 팔꿈치를 몸에 최대한 붙인 후 몸의 수평을 유지하면서 내려갑니다."

    },

    {
        "id": 3,
        "title": "부장가사나",

        "description": "발등과 다리를 바닥에 붙인 후 상체를 쭈욱 늘리면서 들어올립니다."

    }

]
""".data(using: .utf8)!
