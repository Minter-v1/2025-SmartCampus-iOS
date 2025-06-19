//
//  Room.swift
//  SmartCampus
//
//  Created by 이민지 on 6/18/25.
//

import Foundation

//MARK: - 강의실 전체 목록 조회
struct Room: Codable {
    let roomId: String
    let name: String
    let isAvailable: Bool
    
    enum CodingKeys: String, CodingKey {
        case roomId = "room_id"
        case isAvailable = "is_available"
        case name
    }
}


//TODO: - 강의실 상세 조회 API 명세서에따른 모델 구현
