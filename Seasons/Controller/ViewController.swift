//
//  ViewController.swift
//  Seasons
//
//  Created by Tatsiana on 30.03.2020.
//  Copyright © 2020 Tatsiana. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let itemsMenuArray = Menu.seasons.items
    
    @IBOutlet weak var heightOfHeader: NSLayoutConstraint!
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet var headerImage: UIImageView!
    
    @IBOutlet weak var leftConstraintLength: NSLayoutConstraint!
    @IBOutlet weak var rightConstraintLength: NSLayoutConstraint!
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.dataSource = self
        collectionView.delegate = self
    }
}

extension ViewController: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return itemsMenuArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let itemCell =  collectionView.dequeueReusableCell(withReuseIdentifier: "seasonsCell", for: indexPath) as? SeasonsCollectionViewCell {
            itemCell.menuItem = itemsMenuArray[indexPath.row]
            return itemCell
        }
        return UICollectionViewCell()
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let minSide = min(view.frame.size.width, view.frame.size.height)
        let constraintsLength = CGFloat(leftConstraintLength.constant) + CGFloat(rightConstraintLength.constant)
        let spaceBetweenButtons: CGFloat = 20
        let width = (minSide - constraintsLength - spaceBetweenButtons) / 2
        return CGSize(width: width, height: width * 1.2)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let menu = itemsMenuArray[indexPath.row]
        let image = UIImage(named: menu.headerImageName)
        UIView.transition(with: headerImage,
                          duration: 0.75,
                          options: .transitionCrossDissolve,
                          animations: { self.headerImage.image = image},
                          completion: nil)
    }
}
