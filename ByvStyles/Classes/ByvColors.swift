//
//  ByvColors.swift
//  ByvStyles
//
//  Created by Adrian Apodaca on 5/5/18.
//

import Foundation

public struct JsonColor: Codable {
    var r:CGFloat
    var g:CGFloat
    var b:CGFloat
    var a:CGFloat
    var name: String?
    
    func color() -> UIColor {
        return UIColor(red: r/255.0, green: g/255.0, blue: b/255.0, alpha: a)
    }
}

public class ByvColors: NSObject {
    
    public static var colors:[String: UIColor] = [:]
    
    public static func named(_ name:String) -> UIColor? {
        loadColors()
        return colors[name]
    }
    
    public static func loadColors(path: String? = Bundle.main.path(forResource: "Colors", ofType: "json")) {
        if ByvColors.colors.count == 0 {
            if let path = path {
                do {
                    let data = try Data(contentsOf: URL(fileURLWithPath: path), options: .mappedIfSafe)
                    let decoder = JSONDecoder()
                    let jsonColors = try! decoder.decode([JsonColor].self, from: data)
                    for jsonColor in jsonColors {
                        if let name = jsonColor.name {
                            ByvColors.colors[name] = jsonColor.color()
                        }
                    }
                } catch {
                    // handle error
                }
            } else {
                //            fatalError("Failed loading Colors.json. File not found")
            }
        }
    }
}
