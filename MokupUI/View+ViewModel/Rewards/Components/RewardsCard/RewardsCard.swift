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
   
    @IBOutlet weak var completedBg: UIView!
    @IBOutlet weak var completedLbl: UILabel!
    
    @IBOutlet weak var titleLbl: UILabel!
    
    @IBOutlet weak var subTitleLbl: UILabel!
    
    @IBOutlet weak var dateLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        setupUI()
    }

    func setupUI(){
        completedBg.layer.cornerRadius = 8
    }
    
    func configCell(reward:RewardsModel){
      
        let http = reward.image ?? ""
        let httpsUrl = "https" + http.dropFirst(4)
        
        self.imageView.sd_setImage(with: URL(string:httpsUrl), placeholderImage: UIImage(named: "placeholder_image"))
    
        if reward.isCompleted ?? false {
           
            completedBg.backgroundColor = UIColor(named: "#30a66a")
            completedLbl.text = "Completed"
        }else{
            completedBg.backgroundColor = UIColor(named: "#99999b")
            completedLbl.text = "Un Completed"
        }

       
        titleLbl.text = reward.title ?? "N/A"
        subTitleLbl.text = reward.subTitle ?? "N/A"
        dateLbl.text =  "Expaires on \(Helpers.parseApiDateString(reward.expireDate ?? "N/A", format: .dateformatDMY))"

    }
    
}
