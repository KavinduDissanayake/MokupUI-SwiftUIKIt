//
//  BaseVC.swift
//  MokupUI
//
//  Created by Kavindu Dissanayake on 2023-01-05.
//

import UIKit

class BaseVC :UIViewController,LoadingIndicatorDelegate{
    // Back navigation
    func goBack() {
        navigationController?.popViewController(animated: true)
    }
}
