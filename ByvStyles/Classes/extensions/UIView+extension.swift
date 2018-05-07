//
//  UIView+extension.swift
//  ByvStyles
//
//  Created by Adrian Apodaca on 6/5/18.
//

import Foundation

extension UIView {
    public func bgNamedColor(_ name: String) {
        self.backgroundColor = ByvColors.named(name)
    }
    
    public func tintNamedColor(_ name: String) {
        self.tintColor = ByvColors.named(name) ?? UIColor.white
    }
}
