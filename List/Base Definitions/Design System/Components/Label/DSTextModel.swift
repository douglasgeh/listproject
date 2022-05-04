//
//  TextModel.swift
//  List
//
//  Created by Douglas Gehring on 04/05/22.
//

import Foundation
import UIKit

struct DSTextModel {
    
    let text: String?
    let font: UIFont
    let color: UIColor
    let alignment: NSTextAlignment
    
    init(text: String? = nil,
         font: UIFont,
         color: UIColor,
         alignment: NSTextAlignment = .left) {
        
        self.text = text
        self.font = font
        self.color = color
        self.alignment = alignment
    }
}
