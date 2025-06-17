//
//  User.swift
//  SmartCampus
//
//  Created by 이민지 on 6/18/25.
//

import Foundation

//MARK: - 회원가입 요청 모델
struct UserSignUpRequest: Codable {
    let userName: String
    let studentId: String
    let id: String
    let password: String
    let passwordCheck: String
    let email: String
    let phoneNumber: String
    let profilePhoto: String? //이미지 주소(존재하지 않을 수도 있음 = nil)
    
    //JSON 매핑용 enum
    //형식 다른 것만 매핑
    enum CodingKeys: String, CodingKey {
        case userName = "user_name"
        case studentId = "student_id"
        case passwordCheck = "password_check"
        case phoneNumber = "phone_number"
        case profilePhoto = "profile_photo"
    }
    
    
}


//MARK: - 로그인 요청 모델
struct UserLogin: Codable {
    let id: String
    let password: String
}


//MARK: - 사용자 조회 응답 모델
struct UserProfile: Codable {
    let student_id: String //학번
    let id: String
    let name: String
    let department: String
    let phoneNumber: String
    let email: String
    let profilePhoto: String?
}
