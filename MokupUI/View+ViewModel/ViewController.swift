//
//  ViewController.swift
//  MokupUI
//
//  Created by Kavindu Dissanayake on 2023-01-04.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var topHeaderView: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        topHeaderView.addBottomRoundedEdge()
     
        // Do any additional setup after loading the view.
        
//        if let image = UIImage(named: "top_bg"){
//
//            let backgroundImage = UIImageView()
//            let screenSize: CGRect = UIScreen.main.bounds
//            backgroundImage.frame = CGRect(x: 0, y: 0, width: screenSize.width, height: screenSize.height * 0.5)
//            backgroundImage.clipsToBounds = true
//            backgroundImage.image = image
//            backgroundImage.contentMode = .scaleAspectFill
//            backgroundImage.tintColor = UIColor(named: "#fdaf27")
//            self.topHeaderView.insertSubview(backgroundImage, at:0)
//        }
    }


}

