//
//  Favorite.swift
//  SmartCampus
//
//  Created by 이민지 on 6/18/25.
//

import Foundation

//MARK: - 건물 즐겨찾기 요청 모델
struct FavoriteBuildingRequest: Codable {
    let studentId: String
    let bulidingId: String
    
    enum CondingKeys: String, CodingKey {
        case studentId = "student_id"
        case buildingId = "building_id"
    }
}

//MARK: - 강의실 즐겨찾기 요청 모델
struct FavoriteRoomRequest: Codable {
    let studentId: String
    let buildingId: String
    let roomId: String
    
    enum CondingKeys: String, CodingKey {
        case studentId = "student_id"
        case buildingId = "building_id"
        case roomId = "room_id"
    }
}

//MARK: - 즐겨찾기 응답 모델(util)
struct FavoriteResponse: Codable {
    let message: String
}

//MARK: - 즐겨찾기 에러 모델(util)
struct FavoriteErrorResponse: Codable {
    let error: String
}

//MARK: - 커스텀 에러 타입
enum FavoriteError: Error, LocalizedError {
    case alreadyFavorited(String) //409
    case notFound(String) //404
    case networkError(String) //네트워크 에러
    case unknow(String) //기타
    
}
