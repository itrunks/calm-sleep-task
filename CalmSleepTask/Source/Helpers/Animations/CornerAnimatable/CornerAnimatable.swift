//
//  CornerAnimatable.swift
//  CalmSleepTask
//
//  Created by Raja Pichai on 29/12/22.
//

import UIKit

protocol CornerAnimatable {
    func animationCornerRadius(_ radius: CGFloat, duration: Double)
}

extension CornerAnimatable where Self: UIView {

    func animationCornerRadius(_ radius: CGFloat, duration: Double) {
        let animation = Init(CABasicAnimation(keyPath: "cornerRadius")) {
            $0.duration = duration
            $0.toValue = radius
            $0.fillMode = CAMediaTimingFillMode.forwards
            $0.isRemovedOnCompletion = false
        }

        layer.add(animation, forKey: nil)
    }
}

extension UIView: CornerAnimatable {}

