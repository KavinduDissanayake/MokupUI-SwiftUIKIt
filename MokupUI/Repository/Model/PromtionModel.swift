//
//  PromtionModel.swift
//  MokupUI
//
//  Created by Kavindu Dissanayake on 2023-01-05.
//

import UIKit

struct PromtionModel: Codable {
    let title: String?
    let subTitle: String?
    
}
typealias PromtionModelResponse = [PromtionModel]
