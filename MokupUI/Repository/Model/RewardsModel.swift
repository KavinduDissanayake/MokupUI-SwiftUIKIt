//
//  RewardsModel.swift
//  MokupUI
//
//  Created by Kavindu Dissanayake on 2023-01-05.
//

import Foundation


// MARK: - RewardsModel
struct RewardsModel: Codable {
    var title: String?
    var subTitle: String?
    var isCompleted: Bool?
    var expireDate: String?
    var image: String?
    var id: String?
}


typealias RewardsResponse = [RewardsModel]
