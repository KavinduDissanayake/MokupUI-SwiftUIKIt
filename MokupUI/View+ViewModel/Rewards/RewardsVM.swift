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

    let promtionList = BehaviorRelay<[PromtionModel]>(value: sameplePromotArrayList)
    let catgoryList = BehaviorRelay<[CatogryModel]>(value: samepleCatogryArrayList)
    let rewardsList = BehaviorRelay<[RewardsModel]>(value:[])
    
    
    let selectedItems = BehaviorRelay<[IndexPath]>(value: [])

    override init() {
        super.init()
        
    }
    
}
extension RewardsVM {
    
    func toggleSelection(at:Int) {
        let item =  catgoryList.value[at]
        let restItems = catgoryList.value.map { catogry in
            var c = catogry
            c.isSelected = false
            return c
        }
        
        catgoryList.accept(restItems)
        
        var currentItems = catgoryList.value
        if let index = currentItems.firstIndex(of: item) {
            currentItems[index].isSelected?.toggle()
        }
        
        catgoryList.accept(currentItems)
    }
}



extension RewardsVM {
    
    func fetchRewardsList(completion: @escaping CompletionHandler) {
        
        //check internet connection
        guard Reachability.isInternetAvailable() else {
            completion(false,"Internet connection appears to be offline. ")
            return
        }
        
        AFWrapper.sharedInstance.requestGERewards { reponse in
           
            self.rewardsList.accept(reponse)
            
        
            
           completion(true,"Data get Sucess")
        } failure: { error in
            print(error.localizedDescription)
            completion(false,error.localizedDescription)
        }

    }
}
