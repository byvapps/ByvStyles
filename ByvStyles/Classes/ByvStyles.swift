//
//  ByvStyles.swift
//  ByvStyles
//
//  Created by Adrian Apodaca on 4/5/18.
//

import Foundation
import SwiftRichString

public struct JsonStyle: Codable {
    var name:String //"subtitle_messages_bold",
    var fontFace:String //"Roboto-Bold",
    var fontSize:Float //14,
    var fontWeight:Int? // 700,
    var fontStyle:String? //"normal",
    var fontFamily:String //"Roboto",
    var fontStretch:String? //"normal",
    var lineHeight:CGFloat?
    var textAlign:String? //"left",
    var letterSpacing: CGFloat?
    var color: JsonColor
    var weightText:String? //"bold"
    
    func style() -> Style {
        return Style(name, {
            $0.font = FontAttribute(fontFace, size: Float(fontSize))
            if let colorName = color.name {
                $0.color = ByvColors.named(colorName)
            } else {
                $0.color = color.color()
            }
//            if let align = textAlign {
//                $0.align = .center
//            }
        })
    }
}

public class ByvStyles: NSObject {
    
    public static func styleFrom(json: String) -> Style? {
        if let data = json.data(using: .utf8) {
            return ByvStyles.styleFrom(data: data)
        }
        return nil
    }
    
    public static func styleFrom(data: Data) -> Style {
        let decoder = JSONDecoder()
        let jsonStyle = try! decoder.decode(JsonStyle.self, from: data)
        return jsonStyle.style()
    }
    
    static var styles:[String: Style] = [:]
    
    public static func named(_ name:String) -> Style? {
        loadStyles()
        return styles[name]
    }
    
    public static func loadStyles(path: String? = Bundle.main.path(forResource: "Styles", ofType: "json")) {
        if ByvStyles.styles.count == 0 {
            if let path = path {
                do {
                    let data = try Data(contentsOf: URL(fileURLWithPath: path), options: .mappedIfSafe)
                    let decoder = JSONDecoder()
                    let jsonStyles = try! decoder.decode([JsonStyle].self, from: data)
                    for jsonStyle in jsonStyles {
                        styles[jsonStyle.name] = jsonStyle.style()
                    }
                } catch {
                    // handle error
                }
            } else {
//                fatalError("Failed loading Styles.json. File not found")
            }
        }
    }
    
    static func stylesOfText(text: String) -> [Style] {
        var response:[Style] = []
        let comps = text.components(separatedBy: "</")
        if comps.count > 1 {
            for i in 1...comps.count - 1 {
                let comp = comps[i]
                let strStyle = comp.components(separatedBy: ">")[0]
                if let style = ByvStyles.named(strStyle), !response.contains(style) {
                    response.append(style)
                }
            }
        }
        return response
    }
}
