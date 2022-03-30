//
//  TranslateRequestModel.swift
//  Translation
//
//  Created by JeongminKim on 2022/03/30.
//

import Foundation

struct TranslateRequestModel: Codable {
    let source: String
    let target: String
    let text: String
}
