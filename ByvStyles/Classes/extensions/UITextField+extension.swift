//
//  UITextField+extension.swift
//  ByvStyles
//
//  Created by Adrian Apodaca on 8/5/18.
//

import Foundation

extension UITextField {
    
    public func textColorName(_ name: String) {
        self.textColor = ByvColors.named(name)
    }
    
    public func styledPlaceholder(_ taggedText: String) {
        let styles = ByvStyles.stylesOfText(text: taggedText)
        
        self.attributedPlaceholder = taggedText.renderTags(withStyles: styles)
    }
}
