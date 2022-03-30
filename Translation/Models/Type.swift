//
//  Type.swift
//  Translation
//
//  Created by JeongminKim on 2022/03/30.
//

import UIKit

enum `Type` {
    case source
    case target
    
    var color: UIColor {
        switch self {
        case .source:
            return .label
        case .target:
            return .mainTintColor
        }
    }
}
