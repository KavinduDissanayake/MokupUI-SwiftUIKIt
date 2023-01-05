//
//  Constant.swift
//  MokupUI
//
//  Created by Kavindu Dissanayake on 2023-01-05.
//


import Foundation
import UIKit

struct Constant {
    
    //MARK: Manage app environment with release type
    static let appEnvironment: DeploymentEnvironment = .development
    
    //MARK: App environments
    enum DeploymentEnvironment {
        case development
        case staging
        case production
    }
    
    //MARK: Get URLs (Base url etc.)
    enum URLs {
        static let baseUrl = getBaseURL()
    }
    
    
    //MARK: Provide base url for current app environment
    static func getBaseURL() -> String {
        switch Constant.appEnvironment {
        case .development:
            return "https://621f4674311a70591407189f.mockapi.io"
        case .staging:
            return ""
        case .production:
            return "https://"
        }
    }
    
}

