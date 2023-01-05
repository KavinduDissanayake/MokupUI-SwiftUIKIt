//
//  ApplicationServiceProvider.swift
//  MokupUI
//
//  Created by Kavindu Dissanayake on 2023-01-05.
//
import UIKit

let ASP = ApplicationServiceProvider.self


enum ViewContolers: String {
    case RewardsVC
    case RewardsDetailsVC
}

enum Storyboard: String {
    case Main
}


class ApplicationServiceProvider {
    
    static let shared = ApplicationServiceProvider()
    
    public func pushToViewController(in sb: Storyboard, for identifier: String, from vc: UIViewController?, data: Any? = nil) {
        
        let storyboard = UIStoryboard(name: sb.rawValue, bundle: nil)
        let destVc = storyboard.instantiateViewController(withIdentifier: identifier)
        
        //example
//        if destVc is  RewardsDetailsVC && data != nil {
////            let _vc = storyboard.instantiateViewController(withIdentifier: identifier) as! RewardsDetailsVC
////
////            vc?.navigationController?.pushViewController(_vc, animated: true)
////
//        }else{
//            vc?.navigationController?.pushViewController(destVc, animated: true)
//        }
        vc?.navigationController?.pushViewController(destVc, animated: true)
    }
}

