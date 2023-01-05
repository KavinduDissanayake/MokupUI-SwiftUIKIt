//
//  CatogryModel.swift
//  MokupUI
//
//  Created by Kavindu Dissanayake on 2023-01-05.
//

import UIKit

struct CatogryModel: Codable,Equatable {
    static func ==(lhs: CatogryModel, rhs: CatogryModel) -> Bool { return lhs.id == rhs.id }
    var id: String = UUID().uuidString
    var title: String?
    var subTitle: String?
    var isSelected: Bool?
    
}
typealias CatogryModelResponse = [CatogryModel]
