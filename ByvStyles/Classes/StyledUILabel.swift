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
    
    var loaded = false
    
    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        let processInfo = ProcessInfo.processInfo
        let environment = processInfo.environment
        let projectSourceDirectories: String = environment["IB_PROJECT_SOURCE_DIRECTORIES"]!
        let zeplinPath = projectSourceDirectories.replacingOccurrences(of: "Pods", with: "zeplin")
        ByvColors.loadColors(path: zeplinPath + "/Colors.json")
        ByvStyles.loadStyles(path: zeplinPath + "/Styles.json")
        loaded = true
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

