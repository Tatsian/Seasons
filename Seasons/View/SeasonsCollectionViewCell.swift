//
//  SeasonsCollectionViewCell.swift
//  Seasons
//
//  Created by Tatsiana on 30.03.2020.
//  Copyright © 2020 Tatsiana. All rights reserved.
//

import UIKit

class SeasonsCollectionViewCell: UICollectionViewCell {
   
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var viewCell: UIView!
    
    var menuItem: MenuItem? {
        didSet {
            guard let menuItem = menuItem else { return }
            viewCell.backgroundColor = UIColor(hex: menuItem.backgroundColor)
            nameLabel.text = menuItem.name
            imageView.image = UIImage(named: menuItem.iconImageName)
        }
    }
    
    override var isHighlighted: Bool {
        didSet {
            viewCell.alpha = isHighlighted ? 0.7 : 1
            viewCell.transform = isHighlighted ? CGAffineTransform(scaleX: 0.9, y: 0.9) : CGAffineTransform.identity
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        viewCell.layer.cornerRadius = 20
    }
}
