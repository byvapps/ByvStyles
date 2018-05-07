//
//  UIButton+extension.swift
//  ByvLocalizations
//
//  Created by Adrian Apodaca on 1/5/18.
//

import Foundation
import UIKit

extension UIButton {
    public func styledTitle(_ taggedText: String) {
        let styles = ByvStyles.stylesOfText(text: taggedText)
        self.setAttributedTitle(taggedText.renderTags(withStyles: styles), for: .normal)
    }
}
