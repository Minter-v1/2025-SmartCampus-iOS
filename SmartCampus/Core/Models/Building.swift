//
//  Building.swift
//  SmartCampus
//
//  Created by 이민지 on 6/18/25.
//

import Foundation

//MARK: - 건물 목록 조회 응답 모델
struct Building: Codable {
    let buildingCode: String
    let name: String
    let isAvailable: Bool
    
    
    enum CodingKeys: String, CodingKey {
        case buildingCode = "building_code"
        case isAvailable = "is_available"
        case name
        
    }
    
}
