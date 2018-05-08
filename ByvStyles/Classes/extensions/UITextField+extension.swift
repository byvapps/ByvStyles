//
//  UITextField+extension.swift
//  ByvStyles
//
//  Created by Adrian Apodaca on 8/5/18.
//

import Foundation

extension UITextField {
    
    public func styledPlaceholder(_ taggedText: String) {
        let styles = ByvStyles.stylesOfText(text: taggedText)
        if styles.count > 0 {
            self.attributedPlaceholder = taggedText.renderTags(withStyles: styles)
        } else {
            self.placeholder = taggedText
        }
    }
}
