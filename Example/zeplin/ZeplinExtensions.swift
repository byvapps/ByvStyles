//
//  ZeplinExtensions.swift
//  ByvStyles_Example
//
//  Created by Adrian Apodaca on 5/5/18.
//  Copyright © 2018 CocoaPods. All rights reserved.
//

import Foundation
import ByvStyles
import SwiftRichString

/* Color extension */

extension ByvColors {
    
    static let primary: UIColor = {
        return ByvColors.named("primary")!
    }()
    
    static let primaryLight: UIColor = {
        return ByvColors.named("primaryLight")!
    }()
    
    static let lightText: UIColor = {
        return ByvColors.named("lightText")!
    }()
    
    static let inputLabels: UIColor = {
        return ByvColors.named("inputLabels")!
    }()
    
    static let yellowText: UIColor = {
        return ByvColors.named("yellowText")!
    }()
    
    static let lightYellow: UIColor = {
        return ByvColors.named("lightYellow")!
    }()
    
    static let lightGreyBg: UIColor = {
        return ByvColors.named("lightGreyBg")!
    }()
    
    static let primaryDark: UIColor = {
        return ByvColors.named("primaryDark")!
    }()
    
    static let white: UIColor = {
        return ByvColors.named("white")!
    }()
    
    static let whiteTransparent: UIColor = {
        return ByvColors.named("whiteTransparent")!
    }()
    
    static let blackLight: UIColor = {
        return ByvColors.named("blackLight")!
    }()
    
    static let subtitleBlack: UIColor = {
        return ByvColors.named("subtitleBlack")!
    }()
    
    static let black: UIColor = {
        return ByvColors.named("black")!
    }()
}

/* Styles extension */

extension ByvStyles {
    
    static let textPrimaryDark: Style = {
        return ByvStyles.named("textPrimaryDark")!
    }()
    
    static let textWhite: Style = {
        return ByvStyles.named("textWhite")!
    }()
    
    static let textBlack: Style = {
        return ByvStyles.named("textBlack")!
    }()
    
    static let textBlackCentered: Style = {
        return ByvStyles.named("textBlackCentered")!
    }()
    
    static let greenBold: Style = {
        return ByvStyles.named("greenBold")!
    }()
    
    static let titleBoldWhite: Style = {
        return ByvStyles.named("titleBoldWhite")!
    }()
    
    static let subtitleWhite: Style = {
        return ByvStyles.named("subtitleWhite")!
    }()
    
    static let textBlackBold: Style = {
        return ByvStyles.named("textBlackBold")!
    }()
    
    static let secondaryBtnStyle: Style = {
        return ByvStyles.named("secondaryBtnStyle")!
    }()
    
    static let subtitleMessages: Style = {
        return ByvStyles.named("subtitleMessages")!
    }()
    
    static let subtitleBlack: Style = {
        return ByvStyles.named("subtitleBlack")!
    }()
    
    static let rightDetail: Style = {
        return ByvStyles.named("rightDetail")!
    }()
    
    static let subtitleMessagesBold: Style = {
        return ByvStyles.named("subtitleMessagesBold")!
    }()
    
    static let prueba: Style = {
        return ByvStyles.named("prueba")!
    }()
}
