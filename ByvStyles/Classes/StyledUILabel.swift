//
//  ByvStUILabel.swift
//  ByvStyles
//
//  Created by Adrian Apodaca on 4/5/18.
//

import UIKit
import SwiftRichString

@IBDesignable
class StyledUILabel: UILabel {
    
    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        ByvDesignableLoader.preLoad()
        if let styleText = styleText {
            self.styledText(styleText)
        }
    }

    @IBInspectable var styleText: String? {
        didSet {
            if let styleText = styleText {
                self.styledText(styleText)
            }
        }
    }
    
    

}

