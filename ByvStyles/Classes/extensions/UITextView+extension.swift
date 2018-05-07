//
//  UITextView+extension.swift
//  ByvLocalizations
//
//  Created by Adrian Apodaca on 1/5/18.
//

import Foundation

extension UITextView {
    public func styledText(_ taggedText: String) {
        let styles = ByvStyles.stylesOfText(text: taggedText)
        self.attributedText = taggedText.renderTags(withStyles: styles)
    }
}
