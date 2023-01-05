//
//  RoundedCollectionView.swift
//  MokupUI
//
//  Created by Kavindu Dissanayake on 2023-01-05.
//

import UIKit

class RoundedCollectionView: UICollectionView {

    override func draw(_ rect: CGRect) {
        let path = UIBezierPath(roundedRect: bounds, cornerRadius: 8.0)
        UIColor.white.setFill()
        path.fill()
    }
}
