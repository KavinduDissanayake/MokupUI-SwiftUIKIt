//
//  RewardsVM.swift
//  MokupUI
//
//  Created by Kavindu Dissanayake on 2023-01-05.
//

import Foundation
import RxSwift
import RxCocoa

class RewardsVM: BaseVM {
  
    var promtionList = PublishRelay<[PromtionModel]>.of(
        sameplePromotArrayList
      )
    override init() {
        super.init()
        
    }
    
}
