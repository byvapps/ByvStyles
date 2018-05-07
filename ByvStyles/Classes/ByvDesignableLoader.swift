//
//  ByvDesignableLoader.swift
//  ByvStyles
//
//  Created by Adrian Apodaca on 7/5/18.
//

import Foundation

class ByvDesignableLoader: NSObject {
    static func preLoad() {
        let processInfo = ProcessInfo.processInfo
        let environment = processInfo.environment
        let projectSourceDirectories: String = environment["IB_PROJECT_SOURCE_DIRECTORIES"]!
        let zeplinPath = projectSourceDirectories.replacingOccurrences(of: "Pods", with: "zeplin")
        ByvColors.loadColors(path: zeplinPath + "/Colors.json")
        ByvStyles.loadStyles(path: zeplinPath + "/Styles.json")
    }
}
