//
//  Bookmark.swift
//  Translation
//
//  Created by JeongminKim on 2022/03/27.
//

import Foundation

struct Bookmark: Codable {
    let sourceLanguage: Language
    let translatedLanguage: Language
    
    let sourceText: String
    let translatedText: String
}
