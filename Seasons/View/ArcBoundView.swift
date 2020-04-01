//
//  CurveView.swift
//  Seasons
//
//  Created by Tatsiana on 30.03.2020.
//  Copyright © 2020 Tatsiana. All rights reserved.
//

import UIKit

class ArcBoundView: UIView {

    override func layoutSubviews() {
        super.layoutSubviews()
        
        let mask = CAShapeLayer()
        let radius = frame.width * 2.5
        let center = CGPoint(x: frame.midX, y: frame.maxY - radius)
        let path = UIBezierPath(arcCenter: center, radius: radius, startAngle: CGFloat.pi, endAngle: CGFloat.pi * 2, clockwise: false)
        mask.path = path.cgPath
        layer.mask = mask
    }
}

