//
//  UISearchBar+extension.swift
//  ByvStyles
//
//  Created by Adrian Apodaca on 8/5/18.
//

import Foundation

extension UISearchBar {
    
    public var searchField: UITextField? {
        get {
            return self.value(forKey: "searchField") as? UITextField
        }
    }
    
    public func styledPlaceholder(_ taggedText: String) {
        let styles = ByvStyles.stylesOfText(text: taggedText)
        if styles.count > 0 {
            if let searchTextField = self.value(forKey: "searchField") as? UITextField,
                searchTextField.responds(to: #selector(getter: UITextField.attributedPlaceholder)){
                searchTextField.attributedPlaceholder = taggedText.renderTags(withStyles: styles)
            }
        } else {
            self.placeholder = taggedText
        }
    }
}
