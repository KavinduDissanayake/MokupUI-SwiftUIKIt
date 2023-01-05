//
//  ViewController.swift
//  MokupUI
//
//  Created by Kavindu Dissanayake on 2023-01-04.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var topHeaderView: UIView!
    @IBOutlet weak var promtionCV: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        topHeaderView.addBottomRoundedEdge()
    
    }


}

