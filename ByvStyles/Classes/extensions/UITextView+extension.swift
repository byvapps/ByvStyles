//
//  UIView+extension.swift
//  ByvStyles
//
//  Created by Adrian Apodaca on 6/5/18.
//

import Foundation

extension UITextView {
    public func styledText(_ taggedText: String) {
        let styles = ByvStyles.stylesOfText(text: taggedText)
        if styles.count > 0 {
            self.attributedText = taggedText.renderTags(withStyles: styles)
        } else {
            self.text = taggedText
        }
    }
}
