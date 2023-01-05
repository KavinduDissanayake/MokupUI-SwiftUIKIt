//
//  RewardsCard.swift
//  MokupUI
//
//  Created by Kavindu Dissanayake on 2023-01-05.
//

import UIKit
import SDWebImage


class RewardsCard: UICollectionViewCell {

    @IBOutlet weak var imageView: UIImageView!
   
    @IBOutlet weak var topBtn: UIButton!
    
    @IBOutlet weak var titleLbl: UILabel!
    
    @IBOutlet weak var subTitleLbl: UILabel!
    
    @IBOutlet weak var dateLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        setupUI()
    }

    func setupUI(){
        topBtn.layer.cornerRadius = 8
    }
    
    func configCell(reward:RewardsModel){
        self.imageView.sd_setImage(with: URL(string:reward.image ?? ""), placeholderImage: UIImage(named: "placeholder_image"))
        
        if reward.isCompleted ?? false {
            self.topBtn.backgroundColor = UIColor(named: "#99999b")
        }else{
            self.topBtn.backgroundColor = UIColor(named: "#30a66a")
        }
        
        titleLbl.text = reward.title ?? "N/A"
        subTitleLbl.text = reward.subTitle ?? "N/A"
        
        dateLbl.text = reward.expireDate ?? "N/A"
    }
    
}
