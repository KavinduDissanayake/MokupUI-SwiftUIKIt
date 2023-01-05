//
//  RewardsModel.swift
//  MokupUI
//
//  Created by Kavindu Dissanayake on 2023-01-05.
//

import Foundation


// MARK: - RewardsModel
struct RewardsModel: Codable {
    let title: String?
    let subTitle: String?
    let isCompleted: Bool?
    let expireDate: String?
    let image: String?
    let id: String?
    
    enum CodingKeys: String, CodingKey {
        case title = "title"
        case subTitle = "sub_title"
        case isCompleted = "is_completed"
        case expireDate = "expire_date"
        case image = "image"
        case id = "id"
    }
}

typealias RewardsResponse = [RewardsModel]
