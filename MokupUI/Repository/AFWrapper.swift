//
//  AFWrapper.swift
//  MokupUI
//
//  Created by Kavindu Dissanayake on 2023-01-05.
//

import Foundation
import UIKit
import Alamofire

class AFWrapper: NSObject {
    
    static let sharedInstance = AFWrapper()
    
    func requestGERewards(success:@escaping ([RewardsModel]) -> Void, failure:@escaping (Error) -> Void){
           AF.request(Constant.getBaseURL() + "/rewards", method: .get, encoding: JSONEncoding.default)
                   .validate(statusCode: 200..<300) // for validation reuquest
                     .responseData { response in
                         switch response.result {
                         case .failure(let error):
                             print(error)
                             failure(error)
                         case .success(let data):
                            do {
                                 let decoder = JSONDecoder()
                                 decoder.keyDecodingStrategy = .convertFromSnakeCase
                                 let result = try decoder.decode([RewardsModel].self, from: data)
                                 print(result)
                                 success(result)
                             } catch {
                                 print(error)
                                 failure(error)
                            }
                         }
               }
        
       }
    
}
