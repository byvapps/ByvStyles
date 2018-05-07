//
//  UILabel+extension.swift
//  ByvStyles
//
//  Created by Adrian Apodaca on 4/5/18.
//

import Foundation

extension UILabel {
    public func styledText(_ taggedText: String) {
        let styles = ByvStyles.stylesOfText(text: taggedText)
        self.attributedText = taggedText.renderTags(withStyles: styles)
    }
}
