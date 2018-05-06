//
//  StyledUIView.swift
//  ByvStyles
//
//  Created by Adrian Apodaca on 6/5/18.
//

import UIKit

@IBDesignable
class StyledUIView: UIView {

    @IBInspectable var bgNamedColor: String? {
        didSet {
            if let bgNamedColor = bgNamedColor {
                self.bgNamedColor(bgNamedColor)
            }
        }
    }
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
