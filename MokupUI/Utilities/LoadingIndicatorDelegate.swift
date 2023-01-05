//
//  LoadingIndicatorDelegate.swift
//  MokupUI
//
//  Created by Kavindu Dissanayake on 2023-01-05.
//

import Foundation
import UIKit
import RappleProgressHUD

protocol LoadingIndicatorDelegate {
    func startLoading()
    func stopLoading()
}

extension LoadingIndicatorDelegate {
    // -------- RappleProgressHUD -------- //
    // Start loading
    func startLoading() {
        RappleActivityIndicatorView.startAnimating()
    }

    // Stop loading
    func stopLoading() {
        RappleActivityIndicatorView.stopAnimation()
    }
    
   
}


