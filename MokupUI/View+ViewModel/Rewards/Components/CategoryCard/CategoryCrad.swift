//
//  CategoryCrad.swift
//  MokupUI
//
//  Created by Kavindu Dissanayake on 2023-01-05.
//

import UIKit

class CategoryCrad: UICollectionViewCell {
    
    
    @IBOutlet weak var bgView: CornerView!
    @IBOutlet weak var titleLbl: UILabel!
    
    
    override func awakeFromNib() {
     
        super.awakeFromNib()
        // Initialization code
    }

    func cellConfig(model:CatogryModel){
        titleLbl.text = model.title ?? ""
        if model.isSelected ?? false {
            bgView.backgroundColor = UIColor(named: "#fee7be")
            titleLbl.textColor = UIColor(named: "#fdaf27")
        }else{
            bgView.backgroundColor = UIColor.white
            titleLbl.textColor = UIColor(named: "#b8b8b8")
        }
    }
}
